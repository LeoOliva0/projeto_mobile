import 'package:flutter/foundation.dart';

class Tarefa {
  String titulo;
  String descricao;
  String data;

  Tarefa(this.titulo, this.descricao, this.data);
}

class TarefasProvider extends ChangeNotifier {
  List<Tarefa> _tarefas = [];

  List<Tarefa> get tarefas => _tarefas;

  void adicionarTarefa(String titulo, String descricao, String data) {
    _tarefas.add(Tarefa(titulo, descricao, data));
    notifyListeners();
  }

  void editarTarefa(int index, String titulo, String descricao, String data) {
    _tarefas[index].titulo = titulo;
    _tarefas[index].descricao = descricao;
    _tarefas[index].data = data;
    notifyListeners();
  }

  void excluirTarefa(int index) {
    _tarefas.removeAt(index);
    notifyListeners();
  }
}