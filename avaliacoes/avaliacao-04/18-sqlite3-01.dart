import 'dart:io';
import 'package:sqlite3/sqlite3.dart';

void main() {
  print('Using sqlite3 ${sqlite3.version}');

  final db = sqlite3.openInMemory();

  db.execute('''
    CREATE TABLE alunos (
      id INTEGER NOT NULL PRIMARY KEY,
      name TEXT NOT NULL
    );
  ''');

  final stmt = db.prepare('INSERT INTO alunos (name) VALUES (?)');
  stmt
    ..execute(['Matheus Pereira'])
    ..execute(['Beatriz de Oliveira']);

  stmt.dispose();
  
  final ResultSet resultSet =
      db.select('SELECT * FROM alunos');

  for (final Row row in resultSet) {
    print('Aluno[id: ${row['id']}, name: ${row['name']}]');
  }

  db.createFunction(
    functionName: 'dart_version',
    argumentCount: const AllowedArgumentCount(0),
    function: (args) => Platform.version,
  );
  print(db.select('SELECT dart_version()'));

  db.dispose();
}
