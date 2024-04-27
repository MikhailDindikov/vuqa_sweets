import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vuqa_sweets/main.dart';
import 'package:webview_flutter/webview_flutter.dart';

class SysFabSc extends StatefulWidget {
  final DADADA hdjskhsdhsdjjhgergfersdjk;
  final DADADA hdjskhsddfshsd34r24rwejjhksdjk;
  final DADADA hdjskhfsdsdh43rsdfssdjjhksdjk;
  final DADADA hdjsk43ttehsfsddhsdjjhksdjk;
  final int fabSysType;
  const SysFabSc(
      {super.key,
      required this.fabSysType,
      this.hdjskhsdhsdjjhgergfersdjk = DADADA.da,
      this.hdjskhsddfshsd34r24rwejjhksdjk = DADADA.da,
      this.hdjskhfsdsdh43rsdfssdjjhksdjk = DADADA.da,
      this.hdjsk43ttehsfsddhsdjjhksdjk = DADADA.da});

  @override
  State<SysFabSc> createState() => _SysFabScState();
}

class _SysFabScState extends State<SysFabSc> {
  late WebViewController controllerFab;
  String fabTi = '';
  @override
  void initState() {
    final DADADA hdjskhsdhsdjjhgergfwefersdjk = DADADA.da;
    final DADADA hdjskhsddfshsdfew34r24rwejjhksdjk = DADADA.da;
    final DADADA hdjskhfsdsdh43rsdffwessdjjhksdjk = DADADA.da;
    final DADADA hdjsk43ttehsfsdfsddhsdjjhksdjk = DADADA.da;
    final DADADA hdjskhsdhsdjfsdjhgergfersdjk = DADADA.da;
    final DADADA hdjskhsddfshvxcsd34r24rwejjhksdjk = DADADA.da;
    final DADADA hdjskhfsdsdsdfh43rsdfssdjjhksdjk = DADADA.da;
    final DADADA hdjsk43ttehsdvsfsddhsdjjhksdjk = DADADA.da;
    if (widget.fabSysType == 0) {
      fabTi = 'SUPPORT';
    } else if (widget.fabSysType == 1) {
      fabTi = 'Privacy Policy'.toUpperCase();
    } else {
      fabTi = 'Terms of Use'.toUpperCase();
    }
    controllerFab = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(Colors.white)
      ..setNavigationDelegate(
        NavigationDelegate(
          onWebResourceError: (WebResourceError error) {},
          onNavigationRequest: (NavigationRequest request) {
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse(widget.fabSysType == 0
          ? 'https://sites.google.com/view/vuqa-sweets/support-form'
          : widget.fabSysType == 1
              ? 'https://docs.google.com/document/d/1s_3n1JUW-x4bmQOqRKOuDDA4TFBJj1FreRyEE0VlDKM/edit?usp=sharing'
              : 'https://docs.google.com/document/d/1EG724nxlN4mTZqdzz3IUtW6r7KJE7r9o2IecuKbvwZ0/edit?usp=sharing'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final DADADA hdjskhsdhsdjcdscsdjhgergfwefersdjk = DADADA.da;
    final DADADA hdjskhsddfshsdfewccsd34r24rwejjhksdjk = DADADA.da;
    final DADADA hdjskhfsdsdcdscsdh43rsdffwessdjjhksdjk = DADADA.da;
    final DADADA hdjsk43ttehxzczxcsfsdfsddhsdjjhksdjk = DADADA.da;
    final DADADA hdjskhsdhsdczxczjfsdjhgergfersdjk = DADADA.da;
    final DADADA hdjskhsddfshxczxcvxcsd34r24rwejjhksdjk = DADADA.da;
    final DADADA hdjskhfsdsdkhjksdfh43rsdfssdjjhksdjk = DADADA.da;
    final DADADA hdjsk43ttehsdvsfsdkhjkjhdhsdjjhksdjk = DADADA.da;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/bg/Common.png'),
            filterQuality: FilterQuality.high,
            fit: BoxFit.fill),
      ),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: Get.back,
                      child: Image.asset(
                        'assets/decori/back.png',
                        width: 68,
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Text(
                      fabTi.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                    SizedBox(
                      width: 68,
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: WebViewWidget(
                      controller: controllerFab,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
