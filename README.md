
# 🎲 Yahtzee — Flutter (Dart) Single-Player Game

A single-player implementation of the classic **Yahtzee** dice game built in **Flutter/Dart**.  
Roll five dice (up to 3 rolls per turn), hold/unhold dice, select a scoring category, and play through all **13 categories** to maximize your final score.

> Built as a compact Flutter UI + game logic project with reusable widgets for dice and scorecard.

---

## ✨ Features

- **Roll up to 3 times per turn**
- **Hold / Unhold dice** by tapping dice
- **Scorecard selection** to end a turn and lock a category
- Tracks:
  - current roll
  - held dice
  - roll count
  - running total score
- **Game ends after all 13 categories** are used
- Final score shown in an **AlertDialog**, then game can reset for a new session

---

## 🧠 How to Play

1. Tap **Roll Dice** to roll all unheld dice  
2. Tap a die to **hold/unhold** it (held dice won’t change on the next roll)  
3. Repeat rolling (max 3 rolls total)  
4. Choose a scoring category from the scorecard to **lock it in** and end your turn  
5. Continue until all categories are filled → final score is displayed

---

## 🛠 Tech Stack

- **Language:** Dart
- **Framework:** Flutter (Material UI)
- **UI Components:** Custom widgets (dice + scorecard)
- **State:** In-memory state (single session)

---

## 📁 Code Structure (Current)

The project is organized into small Dart files:
- `main.dart` — app entry
- `yahtzeeGame.dart` — game screen + flow
- `yahtzee.dart` — rules/scoring logic (if separated here)
- `diceWidget.dart` — dice UI + hold/unhold interaction
- `scoreCardWidget.dart` — scorecard UI + category selection

> Tip: If you want, you can move these into `lib/` later (recommended), but the current layout works.

---

## ⚙️ Run Locally

### Prerequisites
- Flutter SDK installed
- Android Studio / Xcode / VS Code (any Flutter setup)

### Setup
```bash
git clone https://github.com/Kumbhkaran27/Yahtzee-Game.git
cd Yahtzee-Game
flutter pub get
flutter run

🧩 Scoring Notes

This project implements the standard Yahtzee gameplay loop:

5 dice

3 rolls per turn

13 scoring categories total

Each category can be used once




