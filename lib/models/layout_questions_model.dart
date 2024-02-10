class LayOutQuestion {
  final int id;
  final String text;
  final List<LayOutOption> options;
  bool isLocked;
  LayOutOption? selectedWiidgetOption;
  LayOutOption? correctAnswer;
  // final int timeSeconds;

  LayOutQuestion({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedWiidgetOption,
    required this.id,
    required this.correctAnswer,
    //  required this.timeSeconds
  });

  LayOutQuestion copyWith() {
    return LayOutQuestion(
      id: id,
      text: text,
      options: options
          .map(
            (option) =>
                LayOutOption(text: option.text, isCorrect: option.isCorrect),
          )
          .toList(),
      isLocked: isLocked,
      selectedWiidgetOption: selectedWiidgetOption,
      correctAnswer: correctAnswer,
    );
  }
}

class LayOutOption {
  final String text;
  final bool isCorrect;

  const LayOutOption({
    required this.text,
    required this.isCorrect,
  });
}

final layOutQuestionsList = [
  LayOutQuestion(
    text: "What is a blockchain?",
    options: [
      const LayOutOption(text: "A type of cryptocurrency", isCorrect: false),
      const LayOutOption(text: "A digital ledger of transactions distributed across a network of computers", isCorrect: true),
      const LayOutOption(text: "A secure email communication protocol", isCorrect: false),
      const LayOutOption(text: "A type of cryptographic algorithm", isCorrect: false),
    ],
    id: 0,
    correctAnswer:
        const LayOutOption(text: "A digital ledger of transactions distributed across a network of computers", isCorrect: true),
  ),
  LayOutQuestion(
    text:
        "Which cryptocurrency was the first to utilize blockchain technology?",
    options: [
      const LayOutOption(text: " Bitcoin ", isCorrect: true),
      const LayOutOption(text: "Ethereum", isCorrect: false),
      const LayOutOption(text: "Ripple", isCorrect: false),
      const LayOutOption(text: "Litecoin", isCorrect: false),
    ],
    id: 1,
    correctAnswer: const LayOutOption(text: " Bitcoin", isCorrect: true),
  ),

  LayOutQuestion(
    text:
        "What is the purpose of consensus mechanisms in blockchain networks?",
    options: [
      const LayOutOption(text: " To achieve agreement on the state of the blockchain among network participants ", isCorrect: true),
      const LayOutOption(text: " To encrypt sensitive data on the blockchain", isCorrect: false),
      const LayOutOption(text: "To validate transactions", isCorrect: false),
      const LayOutOption(text: "To prevent double spending", isCorrect: false),
    ],
    id: 2,
    correctAnswer: const LayOutOption(text: " To achieve agreement on the state of the blockchain among network participants", isCorrect: true),
  ),

  LayOutQuestion(
    text:
        "Which of the following is a characteristic of blockchain technology?",
    options: [
      const LayOutOption(text: "Centralized control", isCorrect: false),
      const LayOutOption(text: "High transaction fees", isCorrect: false),
      const LayOutOption(text: "Immutability of records ", isCorrect: true),
      const LayOutOption(text: "Slow transaction processing", isCorrect: false),
    ],
    id: 3,
    correctAnswer:
        const LayOutOption(text: "Immutability of records ", isCorrect: true),
  ),
  // other 4
  LayOutQuestion(
    text:
        "What is a smart contract in the context of blockchain?",
    options: [
      const LayOutOption(text: "A legally binding agreement between parties involved in a blockchain transaction", isCorrect: false),
      const LayOutOption(text: "A program that automatically executes terms of a contract when predefined conditions are met", isCorrect: true),
      const LayOutOption(text: " An encrypted message sent between blockchain nodes", isCorrect: false),
      const LayOutOption(text: "A protocol for securely exchanging digital assets ", isCorrect: false),
    ],
    id: 4,
    correctAnswer: const LayOutOption(text: "A program that automatically executes terms of a contract when predefined conditions are met ", isCorrect: true),
  ),
  LayOutQuestion(
    text: "What type of consensus mechanism does Bitcoin use?",
    options: [
      const LayOutOption(text: " Proof of Authority (PoA) ", isCorrect: false),
      const LayOutOption(text: "Proof of Stake (PoS)", isCorrect: false),
      const LayOutOption(text: " Proof of Work (PoW)", isCorrect: true),
      const LayOutOption(text: "Delegated Proof of Stake (DPoS)", isCorrect: false),
    ],
    id: 5,
    correctAnswer: const LayOutOption(text: " Proof of Work (PoW)", isCorrect: true),
  ),

  LayOutQuestion(
    text:
        "What is the role of miners in a blockchain network?",
    options: [
      const LayOutOption(text: "To verify transactions and add them to the blockchain", isCorrect: true),
      const LayOutOption(text: "To encrypt data on the blockchain", isCorrect: false),
      const LayOutOption(text: " To create new cryptocurrencies", isCorrect: false),
      const LayOutOption(text: "To secure private keys ", isCorrect: false),
    ],
    id: 6,
    correctAnswer:
        const LayOutOption(text: "To verify transactions and add them to the blockchain ", isCorrect: true),
  ),
  LayOutQuestion(
    text:
        "What does the term \"fork\" refer to in blockchain technology?",
    options: [
      const LayOutOption(text: " The process of splitting a blockchain into two separate chains", isCorrect: true),
      const LayOutOption(text: "A software bug in a blockchain protocol ", isCorrect: false),
      const LayOutOption(text: "The cryptographic hash function used in blockchain", isCorrect: false),
      const LayOutOption(text: "The initial distribution of tokens in a blockchain network", isCorrect: false),
    ],
    id: 7,
    correctAnswer: const LayOutOption(text: " The process of splitting a blockchain into two separate chains", isCorrect: true),
  ),
];
