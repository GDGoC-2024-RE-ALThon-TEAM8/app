import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:team8/feature/home/presentation/view_model/home_viewmodel.dart';
import 'package:team8/feature/welcome/presentation/viewmodel/welcome_viewmodel.dart';
import 'package:team8/feature/welcome/presentation/widgets/bg_box.dart';

class WelcomeScreen extends ConsumerStatefulWidget {
  const WelcomeScreen({super.key});

  @override
  ConsumerState<WelcomeScreen> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<WelcomeScreen> {

  @override
  void initState() {
    super.initState();
    ref.read(homeViewModelControllerProvider).recorderController.checkPermission();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(welcomeViewmodelControllerProvider.notifier).controlBgBox();
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final welcomeViewModel = ref.watch(welcomeViewmodelControllerProvider);
    final wlecomeController = ref.read(welcomeViewmodelControllerProvider.notifier);
    
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (_, __) {
        wlecomeController.handleBackBtn();
      },
      child: Scaffold(
        body: Stack(
          children: [
            bgBox(welcomeViewModel.containerHeight),
            SafeArea(
              child: Container(
                width: 390.w,
                height: 844.h,
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  children: [
                    SizedBox(height: 12.h),
                    Text(
                      "\nTEAM 8",
                      style: TextStyle(
                        fontSize: 20.sp, 
                        fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.center
                    ),
                    const Spacer(flex: 2),
                    !welcomeViewModel.showNext
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: const Icon(
                              Icons.mic_external_on_rounded, 
                              size: 120,
                              color: Colors.white,
                            ),
                            // child: Image.asset(
                            //   AppImages.appIcon,
                            //   width: 183.3.w,
                            //   height: 183.3.w,
                            // ),
                          )
                        : AnimatedContainer(
                            duration: const Duration(milliseconds: 1800),
                            height: welcomeViewModel.drawingUp,
                            curve: Curves.fastLinearToSlowEaseIn,
                            child: const SizedBox.shrink()
                          ),
                    Column(
                      children: [
                        SizedBox(
                          height: welcomeViewModel.showNext ? 12.h : 30.h,
                        ),
                        FadeInDown(
                          from: 30,
                          duration:
                              Duration(milliseconds: welcomeViewModel.showNext ? 0 : 480),
                          child: Text(
                            "음성의 변환, 새로운 세상",
                            style: TextStyle(
                              fontSize: 28.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                            ),
                          )
                        ),
                        SizedBox(height: 12.h,),
                        FadeInDown(
                          from: 30,
                          duration: Duration(milliseconds: welcomeViewModel.showNext ? 0 : 860),
                          child: Text(
                            "인공지능과 함께 어눌한 발음을 해결해보세요.",
                            style: TextStyle(
                              fontSize: 14.sp, 
                              color: Colors.white
                            ),
                          )
                        ),
                      ],
                    ),
                    !welcomeViewModel.showNext
                        ? const Spacer(flex: 2)
                        : SizedBox(height: 30.h),
                    !welcomeViewModel.showNext
                        ? const Icon(
                            Icons.keyboard_arrow_down_rounded,
                            size: 60,
                          )
                        : const SizedBox.shrink(),
                    SizedBox(height: 12.h),
                    welcomeViewModel.showNext 
                      ? Center(
                        child: Column(
                          children: [
                            const SizedBox(height: 100,),
                            FadeIn(
                              animate: true,
                              duration: const Duration(milliseconds: 2400),
                              child: const SizedBox(
                                width: 100,
                                height: 100,
                                child: CircularProgressIndicator(
                                  strokeWidth: 8,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const Text("\n\n놀라운 세계를 준비중..."),
                          ],
                        ),
                      )
                      : const SizedBox.shrink(),
                    const Spacer(flex: 4),
                    !welcomeViewModel.showNext
                        ? GestureDetector(
                          onTap: wlecomeController.handleNext,
                          child: Container(
                              padding: EdgeInsets.symmetric(
                                vertical: 8.h, 
                                horizontal: 24.w
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(color: Colors.grey, width: 0.7)
                              ),
                              child: const Text(" 📝이곳을 눌러 다음으로📝"),
                            ),
                        )
                        : const SizedBox.shrink(),
                    SizedBox(height: 12.h),
                    !welcomeViewModel.showNext
                        ? Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(width: 16.w),
                              const SizedBox.shrink(),
                              SizedBox(width: 16.w),
                            ],
                          )
                        : const SizedBox.shrink(),
                    const Spacer(flex: 2),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}