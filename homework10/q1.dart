import 'dart:developer';

void main() {
  NoteApp myApp = NoteApp();
  Note note1 = Note(content: 'studying', title: 'oop', time: DateTime.now());
  myApp.addNote(note1);
  myApp.displayNotes();
  myApp.search('oop');
}

class Note {
  String content;
  String title;
  DateTime time;
  Note({required this.content, required this.title, required this.time}) {}
}

class NoteApp {
  List<Note> notes = [];
  void addNote(Note newNote) {
    notes.add(newNote);
    print('the note was added successfully');
  }

  void displayNotes() {
    if (notes.isEmpty) {
      print('note is currently empty');
    } else {
      print('your notes list');
      for (var note in notes) {
        print("Title: ${note.title}");
        print("Content: ${note.content}");
        print("Time: ${note.time}");
      }
    }
  }

  void search(String searchTitle) {
    for (var note in notes) {
      if (note.title.contains(searchTitle)) {
        print("note is found");
        print(" title: ${note.title} , content: ${note.content}");
        return;
      }
    }
  }
}
