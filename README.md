# SwifTacToe

A very basic command line game of Tic Tac Toe written in Swift and Visual Studio Code.

Ensure that you have Swift 4.x.x installed locally then clone this repository and run:

```
$ swift run
```

Enjoy!

### Looks for help docs?

Run `swift build` and not the location of the executable:

```
$ swift build
Compile Swift Module 'SwifTacToe' (1 sources)
Linking ./.build/x86_64-apple-macosx10.10/debug/SwifTacToe
```

Run the execuable with the `--help` or `-H` flag:

```
~/workspace/swift/SwifTacToe (+2h|master) • $ ./.build/x86_64-apple-macosx10.10/debug/SwifTacToe --help
SwifTacToe
-----------

GENERAL RULES:
- Game play: Player 1 and Player 2 take turns selecting a board position.
- Player 1 is represented by an 'X' and Player 2 is represented by 'O'.
- The game is over when either Player connects three board positions.

BOARD POSITIONS:

To select a board position, at the prompt type one of the Symbols below.

Symbol: Meaning
---------------
TL: Top-left
TC: Top-center
TR: Top-right
CL: Center-left
C: Center
CR: Center-right
BL: Bottom-left
BC: Bottom-center
BR: Bottom-right

```

Inspiration: [Recurse Center Pairing Interview Tasks](https://www.recurse.com/pairing-tasks)

### Future Refactor Considerations

