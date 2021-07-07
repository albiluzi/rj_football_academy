
import 'dart:convert';

import 'package:myteam/model/answer.dart';

class Question {
   int id;
   String question;
   bool multi;
   bool open;

  List<Answer> answers ;

  Question({this.id, this.question, this.multi, this.open, this.answers});

  factory Question.fromJson(Map<String, dynamic> parsedJson){

    List<Answer> answersList = List() ;

    var data = parsedJson['answers'];
    for(Map i in data){
      answersList.add(Answer.fromJson(i));
    }
    return Question(
        id: parsedJson['id'],
        question : parsedJson['question'],
        multi : parsedJson ['multi'],
        open : parsedJson ['open'],
        answers: answersList
    );
  }

  getVotes(){
    int total = 0;
    for(Answer answer in answers){
      total+= answer.votes;
    }
    return total;
  }
}
