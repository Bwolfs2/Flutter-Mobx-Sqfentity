import 'package:mobx/mobx.dart';
import 'package:mobx_sqfentity/model/model.dart';

part 'user_store.g.dart';

class UserStore = _UserStore with _$UserStore;

abstract class _UserStore with Store {

  _UserStore(){
    User(name: "teste",email: "teste123@gmail.com", phone: "(88)992945488").save();
  }

  @observable
  bool loading = false;

  @observable
  ObservableList<User> users = ObservableList<User>();

}