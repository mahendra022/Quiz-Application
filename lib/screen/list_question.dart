class ListQuestion {
  String ques;
  String answer1;
  String answer2;
  String answer3;
  String answer;

  ListQuestion(String aQuest, String aAnswer1, String aAnswer2, String aAnswer3,
      String aAnswer) {
    this.ques = aQuest;
    this.answer1 = aAnswer1;
    this.answer2 = aAnswer2;
    this.answer3 = aAnswer3;
    this.answer = aAnswer;
  }
}

List<ListQuestion> quess = [
  ListQuestion("2 + 3 ?", "5", "8", "9", "5"),
  ListQuestion("17 + 5 ?", "22", "33", "20", "22"),
  ListQuestion("22 + 9 ?", "29", "25", "31", "31"),
  ListQuestion("12 + 2 ?", "14", "8", "9", "14")
];
