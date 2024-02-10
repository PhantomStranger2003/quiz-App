class StateQuestion {
  final int id;
  final String text;
  final List<StateOption> options;
  bool isLocked;
  StateOption? selectedWiidgetOption;
  StateOption? correctAnswer;

  StateQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });
  StateQuestion copyWith() {
    return StateQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
              StateOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class StateOption {
  final String text;
  final bool isCorrect;

  const StateOption({
    required this.text,
    required this.isCorrect,
  });
}

final stateQuestionsList = [
  StateQuestion(
    text:
        "Which programming language is commonly used for developing Android apps?",
    options: [
      const StateOption(text: "Swift", isCorrect: false),
      const StateOption(text: "java", isCorrect: true),
      const StateOption(text: "C++", isCorrect: false),
      const StateOption(text: "Python", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const StateOption(text: "java", isCorrect: true),
  ),
  StateQuestion(
    text:
        "Which of the following is not a popular mobile app development framework?",
    options: [
      const StateOption(text: "Flutter", isCorrect: false),
      const StateOption(text: "React Native", isCorrect: true),
      const StateOption(text: "Xamarin", isCorrect: false),
      const StateOption(text: "Angular JS", isCorrect: false),
    ],
    id: 1,
    correctAnswer: const StateOption(text: "Angular JS", isCorrect: true),
  ),
  StateQuestion(
    text:
        "What is the primary purpose of Android's XML files in app development?",
    options: [
      const StateOption(text: "Handling user input", isCorrect: false),
      const StateOption(text: "Storing app data", isCorrect: false),
      const StateOption(text: "Defining UI layout", isCorrect: true),
      const StateOption(text: " Implementing business logic", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const StateOption(text: "Defining UI layout", isCorrect: true),
  ),

  StateQuestion(
    text:
        "What is the main function of Xcode in iOS app development?",
    options: [
      const StateOption(text: "Testing the app", isCorrect: false),
      const StateOption(text: "Writing code", isCorrect: false),
      const StateOption(text: "Designing UI", isCorrect: false),
      const StateOption(text: " Compiling and debugging", isCorrect: true),
    ],
    id: 3,
    correctAnswer: const StateOption(text: "Compiling and debugging", isCorrect: true),
  ),
  // other 4
  StateQuestion(
    text:
        "Which of the following is a version control system commonly used in app development?",
    options: [
      const StateOption(text: "Git", isCorrect: true),
      const StateOption(text: "Docker", isCorrect: false),
      const StateOption(text: "Kubernetes", isCorrect: false),
      const StateOption(text: "Jenkins", isCorrect: false),
    ],
    id: 4,
    correctAnswer: const StateOption(text: "Git", isCorrect: true),
  ),
  StateQuestion(
    text: "What is the purpose of the \"npm\" command in JavaScript app development?",
    options: [
      const StateOption(text: "Managing project dependencies", isCorrect: true),
      const StateOption(text: "Executing tests", isCorrect: false),
      const StateOption(text: "Compiling code", isCorrect: false),
      const StateOption(text: "Deploying the app", isCorrect: false),
    ],
    id: 5,
    correctAnswer: const StateOption(text: "Managing project dependencies", isCorrect: true),
  ),

  StateQuestion(
    text: "Which of the following is used for cross-platform mobile app development?",
    options: [
      const StateOption(text: "Storing user preferences", isCorrect: false),
      const StateOption(text: "Executing app code", isCorrect: false),
      const StateOption(text: "Managing databases", isCorrect: false),
      const StateOption(text: "Deploying the app", isCorrect: true),
    ],
    id: 6,
    correctAnswer: const StateOption(text: "Deploying the app", isCorrect: true),
  ),
  StateQuestion(
    text:
        "What is the main advantage of using Firebase in app development?",
    options: [
      const StateOption(text: " Cross-platform compatibility", isCorrect: false),
      const StateOption(text: "Real-time database", isCorrect: true),
      const StateOption(text: " Offline data storage", isCorrect: false),
      const StateOption(text: "Automated testing", isCorrect: false),
    ],
    id: 7,
    correctAnswer: const StateOption(text: "Real-time database", isCorrect: true),
  ),

  StateQuestion(
    text:
        " Which programming language is used for iOS app development?",
    options: [
      const StateOption(text: " Java", isCorrect: false),
      const StateOption(text: "Swift", isCorrect: true),
      const StateOption(text: "Kotlin", isCorrect: false),
      const StateOption(text: "Objective-C", isCorrect: false),
    ],
    id: 8,
    correctAnswer: const StateOption(text: "Swift", isCorrect: true),
  ),

  StateQuestion(
    text:
        "What does API stand for in the context of app development?",
    options: [
      const StateOption(text: "Application Programming Interface", isCorrect: true),
      const StateOption(text: "App Performance Index", isCorrect: false),
      const StateOption(text: "Automated Programming Interface", isCorrect: false),
      const StateOption(text: " Application Program Interface", isCorrect: false),
    ],
    id: 9,
    correctAnswer: const StateOption(text: "Application Programming Interface", isCorrect: true),
  ),

  StateQuestion(
    text:
        "What is the purpose of an IDE in app development?",
    options: [
      const StateOption(text: "Internet Development Environment", isCorrect: false),
      const StateOption(text: " Integrated Development Environment", isCorrect: true),
      const StateOption(text: " Interactive Design Environment", isCorrect: false),
      const StateOption(text: " Interfaced Development Environment", isCorrect: false),
    ],
    id: 10,
    correctAnswer: const StateOption(text: " Integrated Development Environment", isCorrect: true),
  ),

  StateQuestion(
    text:
        "Which of the following is a popular database system used in app development?",
    options: [
      const StateOption(text: " MongoDB", isCorrect: true),
      const StateOption(text: "Apache Kafka", isCorrect: false),
      const StateOption(text: "Redis", isCorrect: false),
      const StateOption(text: "Elasticsearch", isCorrect: false),
    ],
    id: 11,
    correctAnswer: const StateOption(text: " MongoDB", isCorrect: true),
  ),
];
