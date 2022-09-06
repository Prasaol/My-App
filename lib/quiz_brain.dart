import 'question.dart';
class QuizBrain {

  int _questionNumber = 0;

  //TODO 2: ปรับเปลี่ยนหรือเพิ่มชุดคำถามใน questionBank
  List<Question> _questionBank=[
    Question(q: 'MWIT is the best school in Thailand.', a: true),
    Question(q: 'ภาษาที่คนสื่อสารกันมากที่สุดคือภาษา Python', a: false),
    Question(q: 'หนึ่งวันมี 24 ชั่วโมง', a: true),
    Question(q: 'รีบๆ เร็วๆ แสดงถึงอาการใจร้อน', a: true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length-1) {
      _questionNumber++;
    }
  }

  String? getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool? getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }

}