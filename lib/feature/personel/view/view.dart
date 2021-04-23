import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../core/constants/enum/page_state_enums.dart';
import '../viewmodel/viewmodel.dart';

class PersonelView extends StatelessWidget {
  final _viewModel = PersonelViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Center(
        child: Observer(builder: (_) {
          switch (_viewModel.pageState) {
            case PageState.LOADING:
              return CircularProgressIndicator();
            case PageState.SUCCESS:
              return buildListViewListTile();
            case PageState.ERROR:
              return Text('Error');
            default:
              return FlutterLogo();
          }
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _viewModel.getAllPersonel(),
        child: Icon(Icons.add),
      ),
    );
  }

  ListView buildListViewListTile() {
    return ListView.builder(
      itemCount: _viewModel.modelList.length,
      itemBuilder: (context, index) => ListTile(
        title: Text(_viewModel.modelList[index].perTc.toString()),
        subtitle: Text(_viewModel.modelList[index].perAdSoyad.toString()),
        leading: Text(_viewModel.modelList[index].id.toString()),
      ),
    );
  }

  AppBar buildAppBar() => AppBar(title: Text('Personeller'));
}
