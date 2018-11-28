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
  
  class State {
    var currentPlayer = 1
  }

  let validMoves:[String: BoardPosition] = [
    "TL": BoardPosition.topLeft,
    "TC": BoardPosition.topCenter,
    "TR": BoardPosition.topRight,
    "CL": BoardPosition.centerLeft,
    "C": BoardPosition.center,
    "BL": BoardPosition.bottomLeft,
    "BC": BoardPosition.bottomCenter,
    "BR": BoardPosition.bottomRight
  ]
 
  func start() {

    var i = 0

    while i < 9 {
      print("Pick a board position!")
      let text = readLine()
      print("You typed: \(text!)")
      i = i + 1
    }
  }
}

func printBoard() {
  print(" X |   |   ")
  print("-----------")
  print("   | O |   ")
  print("-----------")
  print("   |   |   ")
}

let game = TicTacToe()
game.start()