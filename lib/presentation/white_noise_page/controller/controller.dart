import 'dart:developer';
import 'dart:math' as Math;
import 'package:audioplayers/audioplayers.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:pbm_app/core/app_export.dart';

import '../../../domain/firebase/firebase.dart';
import '../now_playing/model/now_playing_model.dart';
import '../pack_detail_composer_screen/models/pack_detail_composer_model.dart';

class WhiteNoiseController extends GetxController {
  Rx<PackDetailComposerModel> packDetailComposerModelObj =
      PackDetailComposerModel().obs;

  final pageController = PageController(initialPage: 0);

  Rx<List<MusicModel>> musicModelList = Rx(<MusicModel>[]);
  Rx<List<QueryDocumentSnapshot<Map<String, dynamic>>>> docs = Rx([]);
  Rx<NowPlayingModel> nowPlayingModelObj = NowPlayingModel().obs;

  RxBool play = false.obs;
  RxBool loading = false.obs;
  Rx<int> currentPageIndex = Rx(0);

  Rx<Duration> duration = Rx(Duration.zero);
  Rx<Duration> position = Rx(Duration.zero);
  final audioPlayer = AudioPlayer();

  int playIndex = 0;
  String category = '';
  late final _box;
  Rx<MusicModel?> currentSong = Rx(null);
  List<String> categories = [
    'audio_stories',
    'lullaby',
    'rain',
    'forest',
    'ocean',
  ];

  Future<List<MusicModel>>? lullaby;

  @override
  void onInit() async {
    await Hive.openBox('white_noise');
    _box = Hive.box('white_noise');
    await getLullaby();
    audioPlayer.onPlayerStateChanged.listen((event) {
      play.value = event == PlayerState.playing;
    });
    audioPlayer.onDurationChanged.listen((event) {
      duration.value = event;
    });

    audioPlayer.onPositionChanged.listen((event) {
      position.value = event;
    });
    super.onInit();
  }

  getLullaby() async {
    int index = 0;
    for (var i = 0; i < categories.length; i++) {
      var resp = await Database.readCollection(
              parentTable: 'white_noise',
              childTable: categories[i],
              id: 'audio')
          .get();
      for (var element in resp.docs) {
        var data = <String, dynamic>{};
        data = element.data();
        log('${categories[i]} music data = ${element.id}');

        data.putIfAbsent('id', () => element.id);
        data.putIfAbsent('index', () => index);
        data.putIfAbsent('category', () => element.reference.parent.id);
        musicModelList.value.add(MusicModel.fromMap(data));
        index++;
      }
    }
  }

  loadCurrentSong() async {
    currentSong.value = musicModelList.value[playIndex];
    audioPlayer.setSourceUrl(currentSong.value!.url.value);

    position.value = (await audioPlayer.getCurrentPosition())!;
    duration.value = (await audioPlayer.getDuration())!;
  }

  onMusicTap(MusicModel music) async {
    for (var element in musicModelList.value) {
      element.isPlaying.value = false;
    }

    currentSong.value = music;
    category = music.category.value;

    music.isPlaying.value = true;

    await playSong(
        url: music.url.value,
        isAnotherSong: music.isPlaying.value,
        index: music.index.value!);
    swapPage(1);
  }

  swapPage(int index) {
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 250), curve: Curves.ease);
    currentPageIndex.value = index;
  }

  playSong(
      {String? url, bool isAnotherSong = false, required int index}) async {
    playIndex = index;
    if (play.value) {
      await audioPlayer.pause();
    } else {
      await audioPlayer.play(UrlSource(url ?? _box.get('musicUrl')));
    }
    if (isAnotherSong) {
      await audioPlayer.play(UrlSource(url!));
    }
    play.value = !play.value;
  }

  onTapNext(List<MusicModel> music) async {
    int next = Math.min(++playIndex, music.length);
    onMusicTap(music[next]);
  }

  onTapPrev(List<MusicModel> music) async {
    int prev = Math.max(--playIndex, 0);
    onMusicTap(music[prev]);
  }

  formatTime(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final hours = twoDigits(duration.inHours);
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));

    return [if (duration.inHours > 0) hours, minutes, seconds].join(':');
  }
}
