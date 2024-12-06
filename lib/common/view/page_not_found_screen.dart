import 'package:flutter/material.dart';

class PageNotFoundScreen extends StatelessWidget{
  const PageNotFoundScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 420),
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: const Column(children: [
              //Appbar
              //CustomAppBar(),
              Spacer(),
              CircleAvatar(
                radius: 65,
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage("https://i.pinimg.com/originals/de/fd/4c/defd4c2becb74d86d9737723070c0ecd.gif"),
              ),
              Text("\n찾으려는 상품이 더이상 존재하지 않습니다ㅠㅠ"),
              Spacer()
            ],),
          ),
        ),
      ),
    );
  }
}