import 'package:archive_app/repositories/documents.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'events.dart';
part 'state.dart';

class DocumentsBloc extends Bloc<DocumentsEvent, DocumentsState> {
  final documentsRepository = DocumentsRepository();
  
  DocumentsBloc() : super(DocumentsInitial()) {
    on<LoadDocuments>((event, emit) async {
      final documents = await documentsRepository.getDocuments();
      emit(DocumentsLoaded(documents: documents));
    });
  }
}