import 'package:flutter/widgets.dart';

class BtnTex extends StatelessWidget {
  final String tex;
  final Color coco;
  final Color zaCo;
  const BtnTex(this.tex,
      {required this.coco,
      required this.zaCo,
      super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Center(
        child: Text(
          tex,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 19,
            fontWeight: FontWeight.w800,
            color: coco,
            shadows: [
              Shadow(
                offset: const Offset(0, 1),
                blurRadius: 0,
                color: zaCo,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
