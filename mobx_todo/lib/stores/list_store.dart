import 'package:mobx/mobx.dart';
import 'package:mobx_todo/stores/todo_store.dart';
part 'list_store.g.dart';

class ListStore = _ListStoreBase with _$ListStore;

abstract class _ListStoreBase with Store {
  @observable
  String newTodoTitle = "";

  @action
  void setNewTodoTitle(String value) => newTodoTitle = value;
  
  @action
  void addTodo() {
    todoList.insert(0, TodoStore(newTodoTitle));
    newTodoTitle = "";
  }

  @computed
  bool get isFormValid => newTodoTitle.isNotEmpty;

  // List internament observavel RX
  ObservableList<TodoStore> todoList = ObservableList<TodoStore>();


}
