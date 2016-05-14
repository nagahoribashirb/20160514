require 'dino'

board = Dino::Board.new(Dino::TxRx.new)
led = Dino::Components::Led.new(pin: 13, board: board)

[:on, :off].cycle do |switch|
  led.send(switch)
  puts switch
  if switch == :on
    sleep 5
  else
    sleep 1
  end
end
