import 'package:archive_app/store/documents/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Documents extends StatelessWidget {
  const Documents({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Мои документы',
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/account');
              },
              icon: const Icon(Icons.account_circle_outlined),
              iconSize: 36)
        ],
      ),
      body: const DocumentList(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).pushNamed('/order');
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class DocumentList extends StatefulWidget {
  const DocumentList({super.key});

  @override
  State<DocumentList> createState() => _DocumentListState();
}

class _DocumentListState extends State<DocumentList> {
  final _documentsBloc = DocumentsBloc();

  @override
  void initState() {
    _documentsBloc.add(LoadDocuments());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DocumentsBloc, DocumentsState>(
      bloc: _documentsBloc,
      builder: (context, state) {
        if (state is DocumentsLoaded) {
          return ListView.builder(
            itemCount: state.documents.length,
            itemBuilder: (context, index) {
              final document = state.documents[index].toString();
              return Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xFF0075FF),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 174, 174, 174),
                        spreadRadius: 2,
                        blurRadius: 7,
                      )
                    ]),
                child: Text(
                  document,
                  style: const TextStyle(color: Colors.white),
                ),
              );
            },
          );
        }
        return const Text("no documents");
      },
    );
  }
}
