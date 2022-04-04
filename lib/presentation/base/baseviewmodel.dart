abstract class BaseViewModel extends BaseViewModelInputs
  with BaseViewModelOutputs {

}


abstract class BaseViewModelInputs {
  void start(); // will be called while init. of view model
  void dispose(); // will be called when viewModel dies.

}

abstract class BaseViewModelOutputs {

}