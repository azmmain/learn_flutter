void main(List<String> args) {
  // variable
  var name = 'Bob';
  Object name1 = 'Bob';
  String name2 = 'Bob';

  int? lineCount;
  assert(lineCount == null);
  int lineCount = 0;
  int lineCount;

  if (weLikeToCount) {
    lineCount = countLines();
  } else {
    lineCount = 0;
  }

  print(lineCount);
}