import 'package:animate_do/animate_do.dart';
import 'package:audio_waveforms/audio_waveforms.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team8/feature/home/presentation/view_model/home_viewmodel.dart';
import 'package:team8/feature/home/presentation/widgets/home_start_ani.dart';
import 'package:team8/helper/constants/app_colors.dart';
import 'package:team8/helper/constants/app_typography.dart';

class HomeScreen extends ConsumerStatefulWidget{
  const HomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> with SingleTickerProviderStateMixin {
  late AnimationController _recordAniController;

  void handleAnimation(bool recording) {
    if(recording) {
      _recordAniController.reverse();
    } else {
      _recordAniController.forward();
    }
  }

  @override
  void initState() {
    super.initState();
    _recordAniController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 480)
    );
    WidgetsBinding.instance.addPostFrameCallback((_){
      ref.read(homeViewModelControllerProvider.notifier).startAnimation();
    });
  }

  @override
  Widget build(BuildContext context) {
    final homeView = ref.watch(homeViewModelControllerProvider);
    final homeController = ref.read(homeViewModelControllerProvider.notifier);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 241, 212),
      resizeToAvoidBottomInset : false,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          //mic btn ui && animation
          Positioned(
            bottom: homeView.startAni ? 40.h : 0,
            child: homeStartAni(homeView.startAni)
          ),
          Positioned(
            bottom: 40.h,
            child: FadeInDown(
              delay: const Duration(milliseconds: 1880),
              duration: const Duration(milliseconds: 800),
              child: InkWell(
                onTap: () {
                  handleAnimation(homeView.recording);
                  homeController.handleRecording();
                },
                borderRadius: BorderRadius.circular(100),
                child: Container(
                  width: 100.w,
                  height: 100.w,
                  alignment: Alignment.center,
                  child: AnimatedIcon(
                    icon: AnimatedIcons.play_pause,
                    progress: _recordAniController,
                    color: Colors.white,
                    size: 48,
                  ),
                ),
              )
            ),
          ),

          SafeArea(
            bottom: false,
            child: Column(
              children: [
                SizedBox(width: 390.w,),
                SizedBox(height: 60.h,),
                FadeInDown(
                  delay: const Duration(milliseconds: 2280),
                  duration: const Duration(milliseconds: 800),
                  child: Text(
                    homeView.pinLeftTime,
                    style: AppTypography.namsanBody1.copyWith(
                      fontSize: 40.sp,
                      color: AppColors.accent
                    ),
                  ),
                ),
                SizedBox(height: 10.h,),
                FadeInDown(
                  delay: const Duration(milliseconds: 2480),
                  duration: const Duration(milliseconds: 800),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 20.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: Colors.white
                    ),
                    child: AudioWaveforms(
                      size: Size(320.w, 60.h),
                      waveStyle: const WaveStyle(
                        middleLineColor: AppColors.accent,
                        scaleFactor: 60,
                        extendWaveform: true
                      ),
                      recorderController: homeView.recorderController
                    ),
                  ),
                ),
                SizedBox(height: 30.h,),
                FadeInDown(
                  delay: const Duration(milliseconds: 2880),
                  duration: const Duration(milliseconds: 800),
                  child: Container(
                    width: 352.w,
                    height: 300.h,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 248, 215, 113),
                      borderRadius: BorderRadius.circular(24)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "변환 결과",
                          style: AppTypography.namsanBody1,
                        ),
                        TextField(
                          controller: homeView.textEditingController,
                          maxLines: null,
                          minLines: 8,
                          decoration: const InputDecoration(
                            hintText: '녹음을 하면 이곳에 변환됩니다.',
                            border: InputBorder.none
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                FadeInDown(
                  delay: const Duration(milliseconds: 3280),
                  duration: const Duration(milliseconds: 800),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: homeController.handleSend, 
                        child: Text(
                          '교정 시작',
                          style: AppTypography.namsanBody1.copyWith(
                            color: AppColors.accent
                          ),
                        )
                      ),
                      SizedBox(width: 20.w,)
                    ],
                  ),
                ),
                const Spacer(flex: 4,)
              ],
            ),
          )
        ],
      )
    );
  }
}