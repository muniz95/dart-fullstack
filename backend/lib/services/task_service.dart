import 'package:dart_fullstack_backend/models/task.dart';

class TaskService {
  List<Map<String, dynamic>> getAllTasks() {
    return [
      {'id': 1, 'name': 'Lavar roupa'},
      {'id': 2, 'name': 'Varrer'},
      {'id': 3, 'name': 'Tirar pó'},
      {'id': 4, 'name': 'Tirar o lixo'},
      {'id': 5, 'name': 'Compras da casa'},
      {'id': 6, 'name': 'Fazer almoço'},
    ];
  }

  int createTask(Task task) {
    return 1;
  }

  int updateTask(int id, Task task) {
    return 1;
  }

  bool deleteTask(int id) {
    return true;
  }
}