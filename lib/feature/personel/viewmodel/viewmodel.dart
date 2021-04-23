import 'dart:io';

import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';

import '../../../core/constants/app/app_constants.dart';
import '../../../core/constants/enum/page_state_enums.dart';
import '../model/model.dart';

part 'viewmodel.g.dart';

class PersonelViewModel = _PersonelViewModelBase with _$PersonelViewModel;

abstract class _PersonelViewModelBase with Store {
  @observable
  List modelList = [];

  @observable
  PageState pageState = PageState.START;

  @action
  Future<void> getAllPersonel() async {
    pageState = PageState.LOADING;

    try {
      final response = await Dio().get(BASE_URL);
      if (response.statusCode == HttpStatus.ok) {
        final responseData = response.data as List;
        modelList = responseData.map((e) => PersonelModel.fromJson(e)).toList();
        pageState = PageState.SUCCESS;
      }
    } catch (e) {
      pageState = PageState.ERROR;
    }
  }
}
