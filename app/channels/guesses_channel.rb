class GuessesChannel < ApplicationCable::Channel
  def subscribed

    # stream_from "some_channel"
    # stream_from expects to receive a string
    # currentgame = Currentgame.find(params[:currentgame])
    # stream_for currentgame
    # stream_from "guesses"
    stream_from "guesses#{params[:value]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  # def receive(data)
  #   guess = Guess.find(data["id"])
  #   guess.update!(clickedButtons: data["clickedButtons"])
  #   ActionCable.server.broadcast('guesses', data)
  # end
end
