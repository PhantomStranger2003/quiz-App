class WidgetQuestion {
  final int id;
  final String text;
  final List<WiidgetOption> options;
  bool isLocked;
  WiidgetOption? selectedWiidgetOption;
  WiidgetOption correctAnswer;

  WidgetQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });

  WidgetQuestion copyWith() {
    return WidgetQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
              WiidgetOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class WiidgetOption {
  final String? text;
  final bool? isCorrect;

  const WiidgetOption({
    this.text,
    this.isCorrect,
  });
}

final widgetQuestionsList = [
  WidgetQuestion(
    text:
        "What is the difference between a list and a tuple in Python?",
    options: [
      const WiidgetOption(text: "A list is immutable, while a tuple is mutable.", isCorrect: false),
      const WiidgetOption(text: "A list is ordered, while a tuple is unordered.", isCorrect: false),
      const WiidgetOption(text: "A list allows duplicate elements, while a tuple does not.", isCorrect: false),
      const WiidgetOption(text: "A list uses square brackets, while a tuple uses parentheses.", isCorrect: true),
    ],
    id: 0,
    correctAnswer: const WiidgetOption(text: "A list uses square brackets, while a tuple uses parentheses.g is NOT a commonly used front-end framework for web development", isCorrect: true),
  ),
  WidgetQuestion(
      text:
          "Which of the following is NOT a commonly used front-end framework for web development?",
      options: [
        const WiidgetOption(text: "React", isCorrect: false),
        const WiidgetOption(text: "Angular", isCorrect: false),
        const WiidgetOption(text: "Django", isCorrect: true),
        const WiidgetOption(text: "Vue.js", isCorrect: false),
      ],
      id: 1,
      correctAnswer: const WiidgetOption(text: "django", isCorrect: true)),
  WidgetQuestion(
      text:
          "What does CSS stand for?",
      options: [
        const WiidgetOption(text: "Cascading Style Sheets", isCorrect: true),
        const WiidgetOption(text: "Computer Science Syntax", isCorrect: false),
        const WiidgetOption(text: "Creative Styling System", isCorrect: false),
        const WiidgetOption(text: "Centralized Styling Standards", isCorrect: false),
      ],
      id: 2,
      correctAnswer:
          const WiidgetOption(text: "Cascading Style Sheets", isCorrect: true)),
  WidgetQuestion(
      text:
          "Which HTTP method is used for retrieving data from a server?",
      options: [
        const WiidgetOption(text: "POST", isCorrect: false),
        const WiidgetOption(text: "PUT", isCorrect: false),
        const WiidgetOption(text: "GET", isCorrect: true),
        const WiidgetOption(text: "DELETE", isCorrect: false),
      ],
      id: 3,
      correctAnswer: const WiidgetOption(text: "GET", isCorrect: true)),
  WidgetQuestion(
      text:
          " What is the purpose of a package.json file in Node.js projects?",
      options: [
        const WiidgetOption(text: "To define project dependencies and scripts", isCorrect: true),
        const WiidgetOption(text: "To store user authentication tokens", isCorrect: false),
        const WiidgetOption(text: "To manage database connections", isCorrect: false),
        const WiidgetOption(text: "To configure server routes", isCorrect: false),
      ],
      id: 4,
      correctAnswer: const WiidgetOption(text: "To define project dependencies and scripts", isCorrect: true)),
  WidgetQuestion(
      text:
          "IWhat does the term “Full Stack Development” refer to?",
      options: [
        const WiidgetOption(text: "Development that involves stack data structures", isCorrect: false),
        const WiidgetOption(text: "Development that involves front-end and back-end programming", isCorrect: true),
        const WiidgetOption(text: "Development that involves only backend programming", isCorrect: false),
        const WiidgetOption(text: "None of the above", isCorrect: false),
      ],
      id: 5,
      correctAnswer:
          const WiidgetOption(text: "Development that involves front-end and back-end programming", isCorrect: true)),
  WidgetQuestion(
      text:
          " Which of the following is not a front-end technology?",
      options: [
        const WiidgetOption(text: "HTML", isCorrect: false),
        const WiidgetOption(text: "CSS", isCorrect: false),
        const WiidgetOption(text: "JAVASCRIPT", isCorrect: false),
        const WiidgetOption(text: "SQL", isCorrect: true),
      ],
      id: 6,
      correctAnswer: const WiidgetOption(text: "SQL", isCorrect: true)),
  WidgetQuestion(
      text:
          "The purpose of the Front-end framework in Full stack development is?",
      options: [
        const WiidgetOption(text: "To provide the client-side interface", isCorrect: true),
        const WiidgetOption(text: "To manage database", isCorrect: false),
        const WiidgetOption(text: "To reduce the server load", isCorrect: false),
        const WiidgetOption(text: "To send http requests", isCorrect: false),
      ],
      id: 7,
      correctAnswer:
          const WiidgetOption(text: "To provide the client-side interface", isCorrect: true)),
  WidgetQuestion(
      text:
          "Amongst which of the following programming language is used as a server-side language?",
      options: [
        const WiidgetOption(text: "python", isCorrect: false),
        const WiidgetOption(text: "C++", isCorrect: false),
        const WiidgetOption(text: "Javascript", isCorrect: false),
        const WiidgetOption(text: "Both A and C", isCorrect: true),
      ],
      id: 8,
      correctAnswer: const WiidgetOption(text: "Both A and C", isCorrect: true)),
  WidgetQuestion(
      text:
          "What is a Front-end framework?",
      options: [
        const WiidgetOption(text: "A development platform for developing user-interface for software applications", isCorrect: true),
        const WiidgetOption(text: "A database to store and manage the data of an application", isCorrect: false),
        const WiidgetOption(text: "A database to store and manage the data of an application", isCorrect: false),
        const WiidgetOption(text: "None", isCorrect: false),
      ],
      id: 9,
      correctAnswer: const WiidgetOption(text: "A development platform for developing user-interface for software applications", isCorrect: true)),
  WidgetQuestion(
      text:
          "Database in Full stack development is used to",
      options: [
        const WiidgetOption(text: "Styling HTML pages", isCorrect: true),
        const WiidgetOption(text: "Storing and retrieving data", isCorrect: false),
        const WiidgetOption(text: "Handling errors on server-side", isCorrect: false),
        const WiidgetOption(text: "Rendering web pages", isCorrect: false),
      ],
      id: 10,
      correctAnswer: const WiidgetOption(
          text: "Storing and retrieving data", isCorrect: true)),
  WidgetQuestion(
      text:
          "What is Git?",
      options: [
        const WiidgetOption(text: " Framework", isCorrect: false),
        const WiidgetOption(text: "Version control system", isCorrect: true),
        const WiidgetOption(text: "database", isCorrect: false),
        const WiidgetOption(text: "Package manager", isCorrect: false),
      ],
      id: 11,
      correctAnswer: const WiidgetOption(text: "Version control system", isCorrect: true)),
  WidgetQuestion(
      text:
          "CRUD stands for",
      options: [
        const WiidgetOption(text: "Create, Read, Upload, Delete", isCorrect: false),
        const WiidgetOption(text: "Create, Read, Upgrade, Deploy", isCorrect: false),
        const WiidgetOption(text: "Create, Remove, Upgrade, Delete", isCorrect: false),
        const WiidgetOption(text: "Create, Read, Update, Delete", isCorrect: true),
      ],
      id: 12,
      correctAnswer: const WiidgetOption(text: "Create, Read, Update, Delete", isCorrect: true)),
  WidgetQuestion(
      text:
          "I am the programming language used to build Flutter apps. What am I?",
      options: [
        const WiidgetOption(text: "Dart", isCorrect: true),
        const WiidgetOption(text: "Java", isCorrect: false),
        const WiidgetOption(text: "Swift", isCorrect: false),
        const WiidgetOption(text: "Kotlin", isCorrect: false),
      ],
      id: 13,
      correctAnswer: const WiidgetOption(text: "Dart", isCorrect: true)),
  WidgetQuestion(
    text:
        "What does the term “RESTful API” stand for?",
    options: [
      const WiidgetOption(text: " Representational State Transferful Application Programming Interface", isCorrect: false),
      const WiidgetOption(text: "Remote Endpoint Service Transfer API", isCorrect: false),
      const WiidgetOption(text: "Representational State Transfer Application Programming Interface", isCorrect: true),
      const WiidgetOption(text: " Remote Endpoint Service Transferful Application Programming Interface", isCorrect: false),
    ],
    id: 14,
    correctAnswer:
        const WiidgetOption(text: "Representational State Transfer Application Programming Interface", isCorrect: true),
  ),
  WidgetQuestion(
    text:
        "Which of the following is a popular back-end framework for JavaScript?",
    options: [
      const WiidgetOption(text: "react", isCorrect: false),
      const WiidgetOption(text: "angular", isCorrect: false),
      const WiidgetOption(text: "express.js", isCorrect: true),
      const WiidgetOption(text: "vue.js", isCorrect: false),
    ],
    id: 15,
    correctAnswer: const WiidgetOption(text: "express.js", isCorrect: true),
  ),
];
