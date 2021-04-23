// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PersonelViewModel on _PersonelViewModelBase, Store {
  final _$modelListAtom = Atom(name: '_PersonelViewModelBase.modelList');

  @override
  List<dynamic> get modelList {
    _$modelListAtom.reportRead();
    return super.modelList;
  }

  @override
  set modelList(List<dynamic> value) {
    _$modelListAtom.reportWrite(value, super.modelList, () {
      super.modelList = value;
    });
  }

  final _$pageStateAtom = Atom(name: '_PersonelViewModelBase.pageState');

  @override
  PageState get pageState {
    _$pageStateAtom.reportRead();
    return super.pageState;
  }

  @override
  set pageState(PageState value) {
    _$pageStateAtom.reportWrite(value, super.pageState, () {
      super.pageState = value;
    });
  }

  final _$getAllPersonelAsyncAction =
      AsyncAction('_PersonelViewModelBase.getAllPersonel');

  @override
  Future<void> getAllPersonel() {
    return _$getAllPersonelAsyncAction.run(() => super.getAllPersonel());
  }

  @override
  String toString() {
    return '''
modelList: ${modelList},
pageState: ${pageState}
    ''';
  }
}
