class listQuestion {
  String ques;
  String answer1;
  String answer2;
  String answer3;
  String answer;

  listQuestion(String aQuest, String aAnswer1, String aAnswer2, String aAnswer3,
      String aAnswer) {
    this.ques = aQuest;
    this.answer1 = aAnswer1;
    this.answer2 = aAnswer2;
    this.answer3 = aAnswer3;
    this.answer = aAnswer;
  }
}

List<listQuestion> ques = [
  listQuestion("2 + 3 ?", "5", "8", "9", "5"),
  listQuestion("17 + 5 ?", "22", "33", "20", "22"),
  listQuestion("22 + 9 ?", "29", "25", "31", "31"),
  listQuestion("12 + 2 ?", "14", "8", "9", "14"),
];

void main() {
  for (listQuestion que in ques) {
    var question = que.ques;
    var answer1 = que.answer1;
    var answer2 = que.answer2;
    var answer3 = que.answer3;
    var answer = que.answer;
    if (answer1 == answer) {
      print("Ini jawabannya");
    } else if (answer2 == answer) {
      print("Ini jawabannya");
    } else if (answer3 == answer) {
      print("Ini jawabannya");
    } else {
      print("tidak ada jawaban");
    }
  }
  print(ques[0].ques);
}
