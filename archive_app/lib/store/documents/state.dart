part of 'bloc.dart';

abstract class DocumentsState {}

class DocumentsInitial extends DocumentsState {}

class DocumentsLoading extends DocumentsState {}

class DocumentsLoaded extends DocumentsState {
  final List documents;

  DocumentsLoaded({required this.documents});
}

class DocumentsLoadFail extends DocumentsState {
  final Object? exception;

  DocumentsLoadFail({required this.exception});
}
