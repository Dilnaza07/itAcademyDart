class Student {
  String _surname;
  String _dateOfEntry;
  double _GPA = 0.0;


  Student(this._surname, this._dateOfEntry, this._GPA);

  double get GPA => _GPA;

  set GPA(double value) {
    _GPA = value;
  }

  String get dateOfEntry => _dateOfEntry;

  set dateOfEntry(String value) {
    _dateOfEntry = value;
  }

  String get surname => _surname;

  set surname(String value) {
    _surname = value;


  }

  @override
  String toString() {
    return 'Студент: $_surname, дата поступления: $_dateOfEntry, балл GPA: $_GPA}';
  }
}
