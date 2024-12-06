import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:team8/config/routes/app_router.dart';
import 'package:team8/config/routes/routes.dart';

part 'welcome_viewmodel.g.dart';

class WelcomeViewmodelState {
  WelcomeViewmodelState({
    required this.containerHeight,
    required this.drawingUp,
    required this.showNext
  });

  double containerHeight;
  double drawingUp;
  bool showNext;
}

@riverpod
class WelcomeViewmodelController extends _$WelcomeViewmodelController {

  @override
  WelcomeViewmodelState build() {
    return WelcomeViewmodelState(
      containerHeight: 0,
      drawingUp: 200,
      showNext: false
    );
  }

  void setState() {
    state = WelcomeViewmodelState(
      containerHeight: state.containerHeight,
      drawingUp: state.drawingUp,
      showNext: state.showNext
    );
  }

  void handleNext() {
    state.showNext = true;
    controlBgBox();
    Future.delayed(const Duration(milliseconds: 3200), (){
      AppRouter.pushAndReplaceNamed(Routes.homeRoute);
    });
  }

  void controlBgBox() {
    if(state.showNext) {
      Future.delayed(const Duration(milliseconds: 180), (){
        state.containerHeight = 860.h;
        state.drawingUp = 0;
        setState();
      });
    } else {
      Future.delayed(const Duration(milliseconds: 180), (){
        state.containerHeight = 560.h;
        state.drawingUp = 200.h;
        setState();
      });
    }
  }

  void handleBackBtn() {
    if(state.showNext) {
      state.showNext = false;
      setState();
    } else {
      AppRouter.pop();
    }
    controlBgBox();
  }
}