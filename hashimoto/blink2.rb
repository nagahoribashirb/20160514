
require 'dino'

board = Dino::Board.new(Dino::TxRx.new)
led10 = Dino::Components::Led.new(pin: 10, board: board)
led13 = Dino::Components::Led.new(pin: 13, board: board)

loop do
  led10.send :on
  led13.send :on
  sleep 1

  led13.send :off
  sleep 1

  led10.send :off
  led13.send :on
  sleep 1


  led10.send :on
  led13.send :off
  sleep 1

  led10.send :off
  sleep 1
end

