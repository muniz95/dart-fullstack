import 'package:dart_fullstack_backend/dart_fullstack_backend.dart';
import 'package:dart_fullstack_backend/models/task.dart';
import 'package:dart_fullstack_backend/services/task_service.dart';

class TaskController extends ResourceController {
  TaskController(this._service);

  final TaskService _service;
  
  @Operation.get()
  Future<Response> getAllTasks() async {
    return Response.ok(_service.getAllTasks());
  }
  
  @Operation.post()
  Future<Response> createTask(@Bind.body() Task task) async {
    return Response.ok(_service.createTask(task));
  }
  
  @Operation.put('id')
  Future<Response> updateTask(@Bind.path('id') int id, @Bind.body() Task task) async {
    return Response.ok(_service.updateTask(id, task));
  }
  
  @Operation.delete('id')
  Future<Response> deleteTask(@Bind.path('id') int id) async {
    return Response.ok(_service.deleteTask(id));
  }
}