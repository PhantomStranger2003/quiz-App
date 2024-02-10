import 'package:flashcards_quiz/models/layout_questions_model.dart';
import 'package:flashcards_quiz/models/naviagation_questions_model.dart';
import 'package:flashcards_quiz/models/widget_questions_model.dart';
import 'package:flashcards_quiz/models/state_questions_model.dart';
import 'package:flutter/cupertino.dart';

const Color cardColor = Color.fromARGB(255, 1, 21, 49);

class FlutterTopics {
  final int id;
  final String topicName;
  final IconData topicIcon;
  final Color topicColor;
  final List<dynamic> topicQuestions;

  FlutterTopics({
    required this.id,
    required this.topicColor,
    required this.topicIcon,
    required this.topicName,
    required this.topicQuestions,
  });
}

final List<FlutterTopics> flutterTopicsList = [
  FlutterTopics(
    id: 0,
    topicColor: cardColor,
    topicIcon: CupertinoIcons.globe,
    topicName: "Full Stack development",
    topicQuestions: widgetQuestionsList,
  ),
  FlutterTopics(
    id: 1,
    topicColor: cardColor,
    topicIcon: CupertinoIcons.device_phone_portrait,
    topicName: "App development",
    topicQuestions: stateQuestionsList,
  ),
  FlutterTopics(
    id: 2,
    topicColor: cardColor,
    topicIcon: CupertinoIcons.lock_circle,
    topicName: "Cybersecurity",
    topicQuestions: navigateQuestionsList,
  ),
  FlutterTopics(
    id: 3,
    topicColor: cardColor,
    topicIcon: CupertinoIcons.link_circle,
    topicName: "Blockchain",
    topicQuestions: layOutQuestionsList,
  ),
];
