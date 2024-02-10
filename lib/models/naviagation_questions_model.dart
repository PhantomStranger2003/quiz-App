class NavigateQuestion {
  final int id;
  final String text;
  final List<NavigationsOption> options;
  bool isLocked;
  NavigationsOption? selectedWiidgetOption;
  NavigationsOption? correctAnswer;

  NavigateQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
  });

  NavigateQuestion copyWith() {
    return NavigateQuestion(
      id: id,
      text: text,
      options: options
          .map((option) =>
              NavigationsOption(text: option.text, isCorrect: option.isCorrect))
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class NavigationsOption {
  final String text;
  final bool isCorrect;

  const NavigationsOption({
    required this.text,
    required this.isCorrect,
  });
}

final navigateQuestionsList = [
  NavigateQuestion(
    text:
        "What does SSL/TLS stand for in the context of secure communication?",
    options: [
      const NavigationsOption(text: "Secure Socket Layer/Transport Layer Security", isCorrect: true),
      const NavigationsOption(text: "Secure Software Layer/Transport Layer Service", isCorrect: false),
      const NavigationsOption(text: "Secure System Layer/Transmission Level Security", isCorrect: false),
      const NavigationsOption(text: "Safe Socket Layer/Transmission Layer Security", isCorrect: false),
    ],
    id: 0,
    correctAnswer: const NavigationsOption(text: "Secure Socket Layer/Transport Layer Security", isCorrect: true),
  ),
  NavigateQuestion(
    text:
        " Which of the following is a common method used to authenticate users in cybersecurity?",
    options: [
      const NavigationsOption(text: "Encryption", isCorrect: false),
      const NavigationsOption(text: "Firewall", isCorrect: false),
      const NavigationsOption(
          text: " Biometrics", isCorrect: true),
      const NavigationsOption(text: " Antivirus", isCorrect: false),
    ],
    id: 1,
    correctAnswer:
        const NavigationsOption(text: " Biometrics", isCorrect: true),
  ),
  NavigateQuestion(
    text:
        "What is the primary purpose of a firewall in network security?",
    options: [
      const NavigationsOption(text: "Detecting and removing malware", isCorrect: false),
      const NavigationsOption(text: "Encrypting network traffic", isCorrect: false),
      const NavigationsOption(text: " Filtering incoming and outgoing network traffic", isCorrect: true),
      const NavigationsOption(text: "Monitoring user activity", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const NavigationsOption(text: " Filtering incoming and outgoing network traffic", isCorrect: true),
  ),

  NavigateQuestion(
    text:
        " What type of attack involves flooding a network or server with excessive traffic to disrupt its normal operation?",
    options: [
      const NavigationsOption(text: "Phishing", isCorrect: false),
      const NavigationsOption(text: " Denial-of-Service (DoS)", isCorrect: true),
      const NavigationsOption(text: " SQL Injection", isCorrect: false),
      const NavigationsOption(text: "Man-in-the-Middle (MitM)", isCorrect: false),
    ],
    id: 3,
    correctAnswer:
        const NavigationsOption(text: "Denial-of-Service (DoS)", isCorrect: true),
  ),
  // other 4
  NavigateQuestion(
    text:
        " What does the acronym \"CVE\" stand for in the context of cybersecurity?",
    options: [
      const NavigationsOption(text: "Common Vulnerability Elimination", isCorrect: true),
      const NavigationsOption(text: " Critical Vulnerability Exposure", isCorrect: false),
      const NavigationsOption(text: "  Common Vulnerabilities and Exposures", isCorrect: false),
      const NavigationsOption(text: " Critical Vulnerability Examination", isCorrect: false),
    ],
    id: 4,
    correctAnswer: const NavigationsOption(
      text: " Common Vulnerability Elimination",
      isCorrect: true,
    ),
  ),
  NavigateQuestion(
    text:
        " Which encryption algorithm is widely used for secure data transmission over the internet?",
    options: [
      const NavigationsOption(
          text: " AES (Advanced Encryption Standard)", isCorrect: true),
      const NavigationsOption(text: "DES (Data Encryption Standard)", isCorrect: false),
      const NavigationsOption(
          text: " RSA (Rivest-Shamir-Adleman)", isCorrect: false),
      const NavigationsOption(
          text: "  MD5 (Message Digest Algorithm 5)", isCorrect: false),
    ],
    id: 5,
    correctAnswer: const NavigationsOption(
        text: "AES (Advanced Encryption Standard)", isCorrect: true),
  ),

  NavigateQuestion(
    text:
        "What is the main purpose of a VPN (Virtual Private Network) in cybersecurity?",
    options: [
      const NavigationsOption(text: "Securely authenticate users", isCorrect: false),
      const NavigationsOption(
          text: "Encrypt network traffic", isCorrect: true),
      const NavigationsOption(text: "Monitor network activity", isCorrect: false),
      const NavigationsOption(text: " Block malicious websites", isCorrect: false),
    ],
    id: 6,
    correctAnswer:
        const NavigationsOption(text: "Encrypt network traffic", isCorrect: true),
  ),
  NavigateQuestion(
    text:
        "Which of the following is an example of a social engineering attack?",
    options: [
      const NavigationsOption(text: "SQL Injection", isCorrect: false),
      const NavigationsOption(text: " Brute Force Attack", isCorrect: false),
      const NavigationsOption(text: "Spear Phishing", isCorrect: true),
      const NavigationsOption(text: "Ransomware", isCorrect: false),
    ],
    id: 7,
    correctAnswer: const NavigationsOption(text: "Spear Phishing", isCorrect: true),
  ),

  NavigateQuestion(
    text:
        "What is the primary role of an Intrusion Detection System (IDS) in cybersecurity?",
    options: [
      const NavigationsOption(text: "Encrypting data at rest", isCorrect: false),
      const NavigationsOption(text: "Preventing malware infections", isCorrect: false),
      const NavigationsOption(text: "Monitoring and analyzing network traffic for signs of attacks", isCorrect: true),
      const NavigationsOption(text: "Blocking unauthorized access to a network", isCorrect: false),
    ],
    id: 8,
    correctAnswer:
        const NavigationsOption(text: "Monitoring and analyzing network traffic for signs of attacks", isCorrect: true),
  ),
];
