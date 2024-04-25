import 'package:just_audio/just_audio.dart';

class Mumu {
  static bool musPl = false;
  static AudioPlayer muslo = AudioPlayer();

  static (bool, List)? goMu(String name) {
    Mumu.musPl = true;
    muslo
      ..setLoopMode(LoopMode.one)
      ..setAsset('assets/' + name)
      ..play();

    return (
      true,
      []
    );
  }

  static (bool, List)? musOne(String name) {
    AudioPlayer()
      ..setAsset('assets/$name')
      ..play();

    return (true, []);
  }

  static (int, List)? stoMu() {
    Mumu.musPl = false;
    muslo.stop();
    return (321265, []);
  }
}
