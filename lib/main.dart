import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), color: Colors.grey),
                width: 380,
                  child: Image.network(
                      "https://cp.ectn.uz/files//0622/shaurma_ostraya_s_kurochkoy_mini_evos.png")),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LikeButton(
                      size: 100,
                      likeCount: 0,
                      countPostion: CountPostion.bottom,
                      animationDuration: Duration(seconds: 2),
                    ),
                    LikeButton(
                      circleColor: CircleColor(start: Colors.deepOrange, end: Colors.redAccent),
                      size: 100,
                      likeCount: 0,
                      countPostion: CountPostion.bottom,
                      animationDuration: Duration(seconds: 2),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
