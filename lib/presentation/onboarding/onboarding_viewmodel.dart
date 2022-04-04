

import 'dart:async';

import 'package:complete_advanced_flutter/domain/model.dart';
import 'package:complete_advanced_flutter/presentation/base/baseviewmodel.dart';
import 'package:complete_advanced_flutter/presentation/resources/assets_manager.dart';
import 'package:complete_advanced_flutter/presentation/resources/strings_manager.dart';

class OnBoardingViewModel extends BaseViewModel with OnBoardingViewModelInputs, OnBoardingViewModelOutputs{

  final StreamController _streamController = StreamController<SliderViewObject>();

  late final List<SliderObject> _list ;
  int _currentIndex = 0;


  //inputs
  @override
  void dispose() {
    _streamController.close();
  }

  @override
  void start() {
    _list = _getSliderData();
    //send this slider data to our view
    _postDataToView();
  }

  @override
  int goNext() {
    int nextIndex = _currentIndex ++;
    if(nextIndex == _list.length) {
      _currentIndex = 0;  // infinite loop to go to first item inside the slider
    }
    return _currentIndex;
  }

  @override
  int goPrevious() {
    int previousIndex = _currentIndex --; //-1
    if(previousIndex == -1) {
      _currentIndex = _list.length -1;
    }
    return _currentIndex;
  }

  @override
  void onPageChanged(int index) {
    _currentIndex = index;
    _postDataToView();
  }

  @override
  Sink get inputSliderViewObject => _streamController.sink;

  //outputs
  @override
  Stream<SliderViewObject> get outputSliderViewObject => _streamController.stream.map((slideViewObject) => slideViewObject);

  //private functions
  List<SliderObject> _getSliderData() =>
      [
        SliderObject(AppString.onBoardingTitle1, AppString.onBoardingSubTitle1,
            ImageAssets.onboardingLogo1),
        SliderObject(AppString.onBoardingTitle2, AppString.onBoardingSubTitle2,
            ImageAssets.onboardingLogo2),
        SliderObject(AppString.onBoardingTitle3, AppString.onBoardingSubTitle3,
            ImageAssets.onboardingLogo3),
        SliderObject(AppString.onBoardingTitle4, AppString.onBoardingSubTitle4,
            ImageAssets.onboardingLogo4),
      ];

  _postDataToView(){
    inputSliderViewObject.add(SliderViewObject(_list[_currentIndex], _list.length, _currentIndex));
  }
}

// input means the order that our view model will receive from our view
abstract class OnBoardingViewModelInputs{
  void goNext(); // when users clicks on the right arrow or swipes left.
  void goPrevious(); // when users clicks on the left arrow or swipes right.
  void onPageChanged(int index);

  Sink get inputSliderViewObject; // a way to add data to the screen
}

// outputs means data or results that will be sent from our view model to our view
abstract class OnBoardingViewModelOutputs{
  Stream<SliderViewObject> get outputSliderViewObject;
}

class SliderViewObject {
  SliderObject sliderObject;
  int numOfSlides;
  int currentIndex;

  SliderViewObject(this.sliderObject, this.numOfSlides, this.currentIndex);
}