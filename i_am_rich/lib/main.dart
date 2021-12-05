import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        // 메터리얼 앱이라는 UI set
        home: Scaffold(
          // # 폰에 보이는 화면
          backgroundColor: Colors.blueGrey, // ## 배경
          appBar: AppBar(
            // ## 앱바
            title: const Text('I am rich'), // ### 타이틀 #### 텍스트
            // centerTitle: true, // ### 앱바 가운데 정렬 for 안드로이드, iOS에서는 가운데 정렬)
            backgroundColor: Colors.blueGrey.shade900, // ### 앱바의 배경
          ), // (닫기) 앱바
          body: const Center(
            // ## 바디 - 또는 컨테이너(행 > 열 > 컨텐츠) 넣는부분.
            child: Image(
              // ### 이미지
              image: AssetImage('images/diamond.png'), // #### 이미지 Asset
            ), // (닫기) 이미지
          ), // (닫기) 센터
        ), // (닫기) 스카폴드
      ), // (닫기) 매터리얼 앱 UI
    );
