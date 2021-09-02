import 'package:mobx/mobx.dart';
import 'package:mobx_sqfentity/model/model.dart';
import 'package:sqfentity/sqfentity.dart';
import 'package:sqfentity_gen/sqfentity_gen.dart';
part 'user_store.g.dart';

class UserStore = _UserStore with _$UserStore;

abstract class _UserStore with Store {
  _UserStore() {
    User(name: "teste", email: "teste123@gmail.com", phone: "(88)992945488").save();
    users.add(User(name: "teste", email: "teste123@gmail.com", phone: "(88)992945488"));
    users.add(User(name: "teste1", email: "teste1233@gmail.com", phone: "(88)992945488"));
  }

  @observable
  bool loading = false;

  @observable
  ObservableList<dynamic> users = ObservableList<dynamic>();
}
