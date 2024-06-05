import 'dart:io';

void main() {
  print('Введите строку');
  String str = stdin.readLineSync() ?? "";

  var line = reversedLine(str);
  print(line);
}

StringBuffer reversedLine (String str){
  StringBuffer stringBuffer= new StringBuffer('');
  for(int i = str.length-1; i>=0; i--){
    stringBuffer.write(str[i]);
  }
  return stringBuffer;

}

