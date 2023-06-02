import 'package:flutter/material.dart';

class TarefasPage extends StatefulWidget {
  @override
  _TarefasPageState createState() => _TarefasPageState();
}

class _TarefasPageState extends State<TarefasPage> {
  List<Tarefa> _tarefas = [];
  TextEditingController _tituloController = TextEditingController();
  TextEditingController _descricaoController = TextEditingController();
  TextEditingController _dataController = TextEditingController();

  void adicionarTarefa(String titulo, String descricao, String data) {
    setState(() {
      _tarefas.add(Tarefa(titulo, descricao, data));
    });
  }

  void editarTarefa(int index, String titulo, String descricao, String data) {
    setState(() {
      _tarefas[index].titulo = titulo;
      _tarefas[index].descricao = descricao;
      _tarefas[index].data = data;
    });
  }

  void excluirTarefa(int index) {
    setState(() {
      _tarefas.removeAt(index);
    });
  }

  void exibirFormulario() {
    _tituloController.clear();
    _descricaoController.clear();
    _dataController.clear();

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Adicionar Tarefa'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _tituloController,
                decoration: InputDecoration(labelText: 'Título'),
              ),
              TextField(
                controller: _descricaoController,
                decoration: InputDecoration(labelText: 'Descrição'),
              ),
              TextField(
                controller: _dataController,
                decoration: InputDecoration(labelText: 'Data'),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Cancelar'),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      adicionarTarefa(
                        _tituloController.text,
                        _descricaoController.text,
                        _dataController.text,
                      );
                      Navigator.of(context).pop();
                    },
                    child: Text('Salvar'),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: _tarefas.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Checkbox(
              value: false, // Adicione o valor adequado aqui
              onChanged: (value) {
                // Implemente a lógica de marcação do Checkbox
              },
            ),
            title: Text(_tarefas[index].titulo),
            onTap: () {
              exibirDetalhesTarefa(index);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          exibirFormulario();
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void exibirDetalhesTarefa(int index) {
    TextEditingController editarTituloController =
        TextEditingController(text: _tarefas[index].titulo);
    TextEditingController editarDescricaoController =
        TextEditingController(text: _tarefas[index].descricao);
    TextEditingController editarDataController =
        TextEditingController(text: _tarefas[index].data);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Detalhes da Tarefa'),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: editarTituloController,
                decoration: InputDecoration(labelText: 'Título'),
              ),
              TextField(
                controller: editarDescricaoController,
                decoration: InputDecoration(labelText: 'Descrição'),
              ),
              TextField(
                controller: editarDataController,
                decoration: InputDecoration(labelText: 'Data'),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      excluirTarefa(index);
                      Navigator.of(context).pop();
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                    ),
                    child: Text('Excluir'),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {
                      editarTarefa(
                        index,
                        editarTituloController.text,
                        editarDescricaoController.text,
                        editarDataController.text,
                      );
                      Navigator.of(context).pop();
                    },
                    child: Text('Salvar'),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

class Tarefa {
  String titulo;
  String descricao;
  String data;

  Tarefa(this.titulo, this.descricao, this.data);
}


