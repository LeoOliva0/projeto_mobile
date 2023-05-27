import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class TarefasPage extends StatefulWidget {
  @override
  _TarefasPageState createState() => _TarefasPageState();
}

class _TarefasPageState extends State<TarefasPage> {
  List<Tarefa> _tarefas = [];
  TextEditingController _tituloController = TextEditingController();
  TextEditingController _descricaoController = TextEditingController();
  TextEditingController _dataController = TextEditingController();
  File? _imagem;

  void _adicionarTarefa() {
    setState(() {
      Tarefa tarefa = Tarefa(
        titulo: _tituloController.text,
        descricao: _descricaoController.text,
        data: _dataController.text,
        imagem: _imagem,
      );
      _tarefas.add(tarefa);

      _tituloController.clear();
      _descricaoController.clear();
      _dataController.clear();
      _imagem = null;
    });
  }

  void _removerTarefa(int index) {
    setState(() {
      _tarefas.removeAt(index);
    });
  }

  Future<void> _getImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      setState(() {
        _imagem = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarefas'),
      ),
      body: ListView.builder(
        itemCount: _tarefas.length,
        itemBuilder: (context, index) {
          final tarefa = _tarefas[index];

          return ListTile(
            title: Text(tarefa.titulo),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetalhesTarefaPage(tarefa: tarefa),
                ),
              );
            },
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () => _removerTarefa(index),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('Adicionar Tarefa'),
                content: SingleChildScrollView(
                  child: Column(
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
                        decoration: InputDecoration(labelText: 'Data da Tarefa'),
                      ),
                      ElevatedButton(
                        onPressed: _getImage,
                        child: Text('Importar Imagem'),
                      ),
                      if (_imagem != null) ...[
                        SizedBox(height: 10),
                        Image.file(
                          _imagem!,
                          width: 100,
                          height: 100,
                        ),
                      ],
                    ],
                  ),
                ),
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      _adicionarTarefa();
                      Navigator.pop(context);
                    },
                    child: Text('Salvar'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('Cancelar'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                    ),
                  ),
                ],
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class Tarefa {
  final String titulo;
  final String descricao;
  final String data;
  final File? imagem;

  Tarefa({
    required this.titulo,
    required this.descricao,
    required this.data,
    this.imagem,
  });
}

class DetalhesTarefaPage extends StatelessWidget {
  final Tarefa tarefa;

  const DetalhesTarefaPage({required this.tarefa});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tarefa.titulo),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Descrição:'),
            Text(tarefa.descricao),
            SizedBox(height: 10),
            Text('Data da Tarefa:'),
            Text(tarefa.data),
            SizedBox(height: 10),
            if (tarefa.imagem != null) ...[
              Text('Imagem:'),
              Image.file(tarefa.imagem!),
            ],
          ],
        ),
      ),
    );
  }
}
