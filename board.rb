class Board
  def initialize
    @chessboard = Array.new(8) { Array.new(8) }
    @turn = "white"
    @chessboard[0][0] = "white rook"
    @chessboard[0][1] = "white knight"
    @chessboard[0][2] = "white bishop"
    @chessboard[0][3] = "white queen"
    @chessboard[0][4] = "white king"
    @chessboard[0][5] = "white bishop"
    @chessboard[0][6] = "white knight"
    @chessboard[0][7] = "white rook"

    @chessboard[1][0] = "white pawn"
    @chessboard[1][1] = "white pawn"
    @chessboard[1][2] = "white pawn"
    @chessboard[1][3] = "white pawn"
    @chessboard[1][4] = "white pawn"
    @chessboard[1][5] = "white pawn"
    @chessboard[1][6] = "white pawn"
    @chessboard[1][7] = "white pawn"

    @chessboard[7][0] = "black rook"
    @chessboard[7][1] = "black knight"
    @chessboard[7][2] = "black bishop"
    @chessboard[7][3] = "black queen"
    @chessboard[7][4] = "black king"
    @chessboard[7][5] = "black bishop"
    @chessboard[7][6] = "black knight"
    @chessboard[7][7] = "black rook"

    @chessboard[6][0] = "black pawn"
    @chessboard[6][1] = "black pawn"
    @chessboard[6][2] = "black pawn"
    @chessboard[6][3] = "black pawn"
    @chessboard[6][4] = "black pawn"
    @chessboard[6][5] = "black pawn"
    @chessboard[6][6] = "black pawn"
    @chessboard[6][7] = "black pawn"

    @letter_to_index = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h']
  end

  def play_move()
    print "Enter a move: "
    move = gets.chomp
    return "q" if move == "q"

    if move[0] == move[0].upcase
      
    else
      if move.length <= 3
        if move.length == 2
          file = @letter_to_index.index(word[0])
          row = word[1]
          if @turn == white
            (0..7).each do |index|
              if @chessboard[file][index] == "white pawn"
                if (index == 1 && (row == 2 || row == 3)) || index == row - 1
                  @chessboard[file][row] = "white pawn"
                  @chessboard[file][index] = nil
                  return "s"
                else
                    puts "Invalid move. There is a piece blocking he square you want to move to."
                    return "f"
                end
              end
            end
            puts "Invalid move. There is no currently no pawn in the file you are asking to move your pawn to."
            return "f"
          else
            (0..7).each do |index|
              if @chessboard[file][index] == "black pawn"
                if (index == 7 && (row == 6 || row == 5)) || index == row + 1
                  if (@chessboard[file][row] == nil)
                    @chessboard[file][row] = "black pawn"
                    @chessboard[file][index] = nil
                    return "s"
                  else
                    puts "Invalid move. There is a piece blocking he square you want to move to."
                    return "f"
                  end
                end
              end
            end
            puts "Invalid move. There is no currently no pawn in the file you are asking to move your pawn to."
            return "f"
          end
        else

        end
      else
        if move.length == 4
          
        else

        end
      end
    end
  end
  @turn = @turn == "white" ? "black" : "white"
end