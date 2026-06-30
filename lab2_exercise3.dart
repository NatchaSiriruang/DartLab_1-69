void main() {
  List<String> subjects = ['Thai Language', 'Statistics', 'Computer Network'];
  print('Number of subjects : ${subjects.length}');
  print('First Subject : ${subjects[0]}');
  print('Last Subject : ${subjects[2]}');
  subjects.add('Mathematics');
  print('Updated Subjects : ${subjects}');

  Map<String, int> scores = {'Thai Language': 74, 'Statistics': 82};
  print('Statistics Scores : ${scores['Statistics']}');

  scores['Computer Network'] = 66;
  scores['Mathematics'] = 49;
  print('Updated scores : $scores');

  print('');
  print("Subjects that have 'a' is");
  for (var key in scores.keys) {
    if (key.contains('a')) {
      print('${key} : ${scores[key]}');
    }
  }
  print('');
  print('Subjects scores more than 50 is');
  for (var key in scores.keys) {
    if (scores[key]! > 50) {
      print('${key} : ${scores[key]}');
    }
  }
}
