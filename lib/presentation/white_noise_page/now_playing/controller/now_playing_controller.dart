// import 'package:audioplayers/audioplayers.dart';
// import 'package:get/get.dart';

// import '../model/now_playing_model.dart';

// /// A controller class for the NowPlayingScreen.
// ///
// /// This class manages the state of the NowPlayingScreen, including the
// /// current nowPlayingModelObj
// class NowPlayingController extends GetxController {
//   Rx<NowPlayingModel> nowPlayingModelObj = NowPlayingModel().obs;

//   RxBool play = false.obs;

//   Rx<Duration> duration = Rx(Duration.zero);
//   Rx<Duration> position = Rx(Duration.zero);
//   final audioPlayer = AudioPlayer();


//   @override
//   void onInit() {
    
//     audioPlayer.onPlayerStateChanged.listen((event) {
//       play.value = event == PlayerState.playing;
//     });
//     audioPlayer.onDurationChanged.listen((event) {
//       duration.value = event;
//     });

//     audioPlayer.onPositionChanged.listen((event) {
//       position.value = event;
//     });
//     super.onInit();
//   }

//   playSong({required String url}) async {
//     if (play.value) {
//       await audioPlayer.pause();
//     } else {
//       await audioPlayer.play(UrlSource(url));
//     }
//     play.value = !play.value;
//   }

//   formatTime(Duration duration) {
//     String twoDigits(int n) => n.toString().padLeft(2, '0');
//     final hours = twoDigits(duration.inHours);
//     final minutes = twoDigits(duration.inMinutes.remainder(60));
//     final seconds = twoDigits(duration.inSeconds.remainder(60));

//     return [if (duration.inHours > 0) hours, minutes, seconds].join(':');
//   }
// }
