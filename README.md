Yahtzee 

Overview
This project is a single-player implementation of the classic dice game Yahtzee. 
The game involves rolling five dice up to three times per turn to achieve various scoring combinations. 
Players select scoring categories to end each turn, and the game continues until all 13 categories on the scorecard are used. 
The objective is to achieve the highest possible score.

Features
Dice Rolling: Roll up to five dice up to three times per turn.
Hold/Unhold Dice: Select which dice to hold and which to roll again.
Scorecard Management: Select scoring categories and track scores for each.
Final Score Display: View the final score when the game ends.
Game Reset: Reset the game state for a new session after displaying the final score.


Gameplay

Roll Dice: Click the "Roll Dice" button to roll all unheld dice. The button is disabled after three rolls.
Hold Dice: Tap on a die to toggle its "held" state. Held dice will not change when rolling.
Choose Scoring Category: After rolling, select a scoring category from the scorecard to end your turn.
View Scores: The app displays the most recent roll, held dice, the roll count for the current turn, and the total score.
End Game: The game ends when all 13 categories are used. The final score is displayed in an AlertDialog, and the game resets upon dismissal.
