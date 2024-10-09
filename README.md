# Tic-Tac-Toe Game in R

This is a **Tic-Tac-Toe** game built in R where you play against the computer. The game uses standard 3x3 Tic-Tac-Toe rules, where players alternate turns placing their symbols (user: "x", computer: "o") on the grid. The goal is to align three of your symbols either horizontally, vertically, or diagonally before your opponent.

## Key Features:
- Interactive gameplay where the user plays as "x" and the computer plays as "o."
- The computer uses a strategic algorithm to maximize its chances of winning or blocking the player.
- The game checks for winning conditions, draws, and available moves after each turn.
- Input validation ensures players can only choose valid moves.

## How to Play:
1. At the start of the game, the user is assigned the symbol "x" and the computer is "o."
2. The user is prompted to enter their move as coordinates in the format `row,column` (e.g., `1,2`).
3. After the user moves, the computer evaluates the board and makes its move.
4. The game continues until one player wins or the board is full (draw).

## Usage:
1. **Download** or copy the code into an R script or R console.
2. Call the function `play_Tic_Tac_Toe()` to start the game.
3. Follow the prompts to input your moves.
4. The game will announce the result (win, loss, or draw) when it concludes.

This simple R implementation allows for a fun, turn-based interactive game with a clear AI strategy for the computer player!
