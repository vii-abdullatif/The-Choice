# Ssnake
* ### The snake game is a classic arcade game where you control a growing snake, eating food to score points while avoiding crashing into your body.

<img width="1272" height="566" alt="Screenshot 2026-07-28 094829" src="https://github.com/user-attachments/assets/b4ec31d1-c454-4e7d-b9d5-4b4fc8812058" />
<img width="1536" height="863" alt="Screenshot 2026-07-28 094955" src="https://github.com/user-attachments/assets/5e3995a8-f192-4ae3-bac7-f4655b0d8c20" />


<a href="https://vbdullatif.itch.io/ssnake" target="_blank">
  <img src="https://github.com/user-attachments/assets/0f7f2114-e473-4424-a27a-afdc280ce30e" alt="Play Demo" width="600">
</a>


### Features
* #### Simple ui
*  #### Continuous growth
*   #### Retro design
*    #### Increasing difficulty

## How it works:
The game uses a grid-coordinate array in GDScript to drive movement. On each Timer tick, the head vector updates and body segments follow the path history, while boundary logic handles screen wrapping. Food spawns on random coordinates checked against active body positions, and high scores persist locally via Godot's ConfigFile system.

## Credits:
* The fruits asset was created by @Gherwit
* Followed this tutorial to build the base game: https://youtu.be/c7HQwxs5y8w?si=mTrMWSBDZxTYV2eE
## What's new:
* Added Power-Ups (Buy lost lives for 20 score points each(B-KEY), Speed-Up for 3 score points at a time (Space-KEY))

## Note:
The game differs from the tutorial by adding 3 lives and special high-point fruits to give you extra chances and bigger scores.
AI was used for debugging in this project
