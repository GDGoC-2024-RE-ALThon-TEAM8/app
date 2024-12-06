import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team8/feature/result/presentation/viewmodel/result_viewmodel.dart';
import 'package:team8/helper/constants/app_mp4.dart';
import 'package:team8/helper/constants/app_typography.dart';
import 'package:video_player/video_player.dart';

class ResultScreen extends ConsumerStatefulWidget{
  const ResultScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ResultScreenState();
}

class _ResultScreenState extends ConsumerState<ResultScreen> {

  @override
  void initState() {
    super.initState();
    ref.read(resultViewModelControllerProvider).videoController = VideoPlayerController.asset(AppMp4.video);
    ref.read(resultViewModelControllerProvider).videoController.setLooping(true);
    ref.read(resultViewModelControllerProvider).videoController.initialize();
    ref.read(resultViewModelControllerProvider).dataList = [];
    ref.read(resultViewModelControllerProvider).wrongList = [];
    ref.read(resultViewModelControllerProvider.notifier).getResultData();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(milliseconds: 3000), () {
        ref.read(resultViewModelControllerProvider).videoController.play();
      });
    });
  }

  @override
  void dispose() {
    ref.read(resultViewModelControllerProvider).videoController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final resultView = ref.watch(resultViewModelControllerProvider);
    final resultController = ref.read(resultViewModelControllerProvider.notifier);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 241, 212),
      body: Padding(
        padding: EdgeInsets.only(top: 20.h),
        child: ListView.builder(
          itemCount: resultView.dataList.length,
          itemBuilder: (context, index) {
            return Container(
              width: 352.w,
              margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 248, 215, 113),
                borderRadius: BorderRadius.circular(24)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "[올바른 문장]",
                    style: AppTypography.namsanBody1,
                  ),
                  Text(
                    resultView.dataList[index].correct_sentence,
                  ),
                  Text(
                    "\n[다른 사람들에게는 이렇게 들려요]",
                    style: AppTypography.namsanBody1,
                  ),
                  Text(
                    resultView.dataList[index].tts_sentence,
                  ),
                  Text(
                    "\n[자세한 교정]",
                    style: AppTypography.namsanBody1,
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                      itemCount: resultView.wrongList.length,
                      itemBuilder: (context, iindex) {
                        return Text(
                          "음절[$iindex] : ${resultView.wrongList[iindex].syllable}\n"
                          "발음 수정 : ${resultView.wrongList[iindex].modification_of_pronunciation}\n"
                          "개선 방법 : \n${resultView.wrongList[iindex].how_to_improve}\n"
                        );
                      }
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(24),
                    child: AspectRatio(
                      aspectRatio: 1.0,
                      child: VideoPlayer(resultView.videoController)
                    ),
                  )
                ],
              ),
            );
          }
        ),
      )
    );
  }
}