enum BoardPosition: Int {
  case topLeft = 1
  case topCenter = 2
  case topRight = 3
  case centerLeft = 4
  case center = 5
  case centerRight = 6
  case bottomLeft = 7
  case bottomCenter = 8
  case bottomRight = 9
}

class TicTacToe {

  // Some state
  var player: Bool = true
  var playerOneMoves: Set<BoardPosition> = []
  var playerTwoMoves: Set<BoardPosition> = []

  var remainingMoves: Set<BoardPosition> = [
    .topLeft, .topCenter, .topRight,
    .centerLeft, .center, .centerRight,
    .bottomLeft, .bottomCenter, .bottomRight
  ]

  let possibleMoves:[String: BoardPosition] = [
    "TL": .topLeft,
    "TC": .topCenter,
    "TR": .topRight,
    "CL": .centerLeft,
    "C": .center,
    "CR": .centerRight,
    "BL": .bottomLeft,
    "BC": .bottomCenter,
    "BR": .bottomRight
  ]
 
  // Functions

  func printBoard() {
    printTopRow()
    print("-----------")
    printCenterRow()
    print("-----------")
    printBottomRow()
  }

  func printTopRow() {
    print(" \(printMove(forPosition: BoardPosition.topLeft)) | \(printMove(forPosition: BoardPosition.topCenter)) | \(printMove(forPosition: BoardPosition.topRight)) ")
  }

  func printCenterRow() {
    print(" \(printMove(forPosition: BoardPosition.centerLeft)) | \(printMove(forPosition: BoardPosition.center)) | \(printMove(forPosition: BoardPosition.centerRight)) ")
  }

  func printBottomRow() {
    print(" \(printMove(forPosition: BoardPosition.bottomLeft)) | \(printMove(forPosition: BoardPosition.bottomCenter)) | \(printMove(forPosition: BoardPosition.bottomRight)) ")
  }

  func printMove(forPosition position: BoardPosition) -> String {
    if playerOneMoves.contains(position) {
      return "X"
    } else if playerTwoMoves.contains(position) {
      return "0"
    }

    return " "
  }

  func start() {
    var i = 0

    while i < 9 {
      print("------------------")
      print("Player \(player ? "one" : "two") pick a board position:")
      let text = readLine()

      if let position = possibleMoves[text!] {

        // Validate move
        if remainingMoves.contains(position) {
          remainingMoves.remove(position)

          // Assign move to player
          if player {
            playerOneMoves.insert(position)
          } else {
            playerTwoMoves.insert(position)
          }

          print("Position: \(position)")
          printBoard()

          // Next move
          i = i + 1

          // Toggle player
          player = !player

        } else {
          print("Position: \(text!) is taken. Try again!")
        }
      } else {
        print("'\(text!)' is not a valid position on the game board. Try again!'")
      }
    }
  }
}

let game = TicTacToe()
game.start()