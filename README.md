# Flutter Quiz App

A simple Flutter application that tests the user's knowledge about Flutter.  
The app provides an interactive quiz experience with shuffled answers each time the quiz is taken.

---

## ✨ Features

- **Start Screen**: Entry point where users can begin the quiz.
- **Question Screens**: Displays multiple-choice questions about Flutter.
  - Automatically progresses to the next question when an answer is selected.
- **Result Screen**: Shows the user's performance after finishing the quiz.
- **Answer Shuffling**: Each quiz attempt presents the answers in a different order for variety.

---

## 🖼️ App Flow

1. **Start Screen** → Tap *Start Quiz*  
2. **Question Screens** → Answer questions one by one  
3. **Result Screen** → View your score & option to restart the quiz  

---

## 📂 Project Structure

    lib/
    ├── data/
    │ └── questions.dart # Quiz questions and answers
    │
    ├── models/
    │ └── quiz_questions.dart # Quiz question model
    │
    ├── button_widget.dart # Custom button widget
    ├── main.dart # App entry point
    ├── question_summary.dart # Widget to show summary of answers
    ├── questions_screen.dart # Question and answer logic
    ├── quiz.dart # Core quiz logic and screen switching
    ├── result_screen.dart # Result summary UI
    └── start_screen.dart # Start screen UI

---

## 🚀 Getting Started

### Prerequisites
- [Flutter SDK](https://docs.flutter.dev/get-started/install) installed
- Android Studio / VS Code with Flutter & Dart plugins

## Installation & Run
    
    # Clone this repository
    git clone https://github.com/HusseinGhandour-lb/flutter-quiz-app.git

    # Navigate to the project folder
    cd flutter-quiz-app

    # Get dependencies
    flutter pub get

    # Run the app
    flutter run
    
---

## 📸 Screenshots
<br>
<br>
<img width="456" height="978" alt="Image" src="https://github.com/user-attachments/assets/239b3841-e402-490a-a792-91fe4d49d2bf" />
<br>
<br>
<img width="463" height="988" alt="Image" src="https://github.com/user-attachments/assets/f7a0799b-7748-4cca-8c46-35316c295a0f" />
<br>
<br>
<img width="466" height="989" alt="Image" src="https://github.com/user-attachments/assets/3b448646-24f7-4812-8d13-09a935cb96d0" />
<br>
<br>
<img width="457" height="981" alt="Image" src="https://github.com/user-attachments/assets/3116881e-ecd9-4d49-9520-b50a757649b2" />
