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
  var playerOneMoves:[BoardPosition] = []
  var playerTwoMoves:[BoardPosition] = []

  let validMoves:[String: BoardPosition] = [
    "TL": BoardPosition.topLeft,
    "TC": BoardPosition.topCenter,
    "TR": BoardPosition.topRight,
    "CL": BoardPosition.centerLeft,
    "C": BoardPosition.center,
    "CR": BoardPosition.centerRight,
    "BL": BoardPosition.bottomLeft,
    "BC": BoardPosition.bottomCenter,
    "BR": BoardPosition.bottomRight
  ]
 
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
      print("Player \(player ? "one" : "two") pick a board position:")
      let text = readLine()

      if let position = validMoves[text!] {
        if player {
          playerOneMoves.append(position)
        } else {
          playerTwoMoves.append(position)
        }

        print("Position: \(position)")
        printBoard()
        i = i + 1
        player = !player

      } else {
        print("eh? \(text!)")
      }
    }
  }
}

let game = TicTacToe()
game.start()