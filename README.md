## Mastermind_Boardgame

The object of MASTERMIND (r) is to guess a secret code consisting of a series of 4 colored pegs.
You can play either as a CodeBraker or a CodeMaker but in this particular code, you can only play vs IA.
If you choose to play as a code maker then the IA will play as the codebreaker and vice versa, The winner is the one who solves his opponent's secret code with fewer guesses.

## Content

- There are six colors to create the secret code with Red, Blue, Green, Yellow, Black and White
- There are 2 different pegs which we can give or receive feedback (usually called key pegs, 4 maximum, 1 for each peg guest), those are: 
 - Red peg = it means we have the right color in the right position.
 - White peg = it means we have the right color but not the right position

## Rules 
- The Player and IA have 12 turns to guess the code. The code maker receives 1 point for every turn made by the opponent and will receive and extra point  If the secret code is no guest (12 + 1 = 13 in total). 
- The code is brake every time there are 4 red key pegs as feedback.
- There is nothing about the placement of the Key Pegs to indicate which particular CodePegs are meant. It is part of the challenge of the game for the Codebreaker to figure out which Code Pegs correspond to particular Key Pegs.

## Playing as code maker 

We give feedback for Each IA guest narrowing down the possibilities of the code.


## Playing as a code breaker

We receive feedback from IA on every guest we make narrowing the possibilities of the code.

## Built With

- Ruby  
- Rubocup  

## Live Demo

Comming soon...
 
## Author

👤 **Victor Manuel Gonzalez Buitrago**

- Github: [@Shaqri](https://github.com/Shaqri)
- Twitter: [@victorgonbu](https://twitter.com/victorgonbu)
- Linkedin: [linkedin](https://www.linkedin.com/in/victor-manuel-gonzalez-buitrago-8704731a5/)


## 🤝 Contributing

Contributions, issues and feature requests are welcome!

Feel free to check the [issues page](issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- [Thanks Microverse][https://github.com/microverseinc]

