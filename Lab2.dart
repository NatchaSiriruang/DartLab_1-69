void main() {
  List<String> subjects = ['Thai','English','Science'];
  print('Number of subjects : ${subjects.length}');
  print('FirstSub : ${subjects[0]}');
  print('LastSub : ${subjects[2]}');
  subjects.add('Math');
  print('Updated Subjects : ${subjects}');
  
  Map<String,int> scores = {'Thai':74,'English':55};
  print('English Scores : ${scores['English']}');
  
  scores['Math'] = 80;
  print('Updated scores : $scores');
  
}
