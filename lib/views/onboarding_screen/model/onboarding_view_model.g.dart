// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$OnBoardingViewModel on _OnBoardingViewModelBase, Store {
  late final _$pageIndexAtom =
      Atom(name: '_OnBoardingViewModelBase.pageIndex', context: context);

  @override
  int get pageIndex {
    _$pageIndexAtom.reportRead();
    return super.pageIndex;
  }

  @override
  set pageIndex(int value) {
    _$pageIndexAtom.reportWrite(value, super.pageIndex, () {
      super.pageIndex = value;
    });
  }

  late final _$nextPageAsyncAction =
      AsyncAction('_OnBoardingViewModelBase.nextPage', context: context);

  @override
  Future<void> nextPage() {
    return _$nextPageAsyncAction.run(() => super.nextPage());
  }

  late final _$jumpToPageAsyncAction =
      AsyncAction('_OnBoardingViewModelBase.jumpToPage', context: context);

  @override
  Future<void> jumpToPage() {
    return _$jumpToPageAsyncAction.run(() => super.jumpToPage());
  }

  late final _$_OnBoardingViewModelBaseActionController =
      ActionController(name: '_OnBoardingViewModelBase', context: context);

  @override
  void pageControllerListener() {
    final _$actionInfo = _$_OnBoardingViewModelBaseActionController.startAction(
        name: '_OnBoardingViewModelBase.pageControllerListener');
    try {
      return super.pageControllerListener();
    } finally {
      _$_OnBoardingViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
pageIndex: ${pageIndex}
    ''';
  }
}
