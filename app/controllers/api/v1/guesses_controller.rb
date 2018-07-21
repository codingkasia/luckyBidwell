class Api::V1::GuessesController < Api::V1::BaseController
    
    def index
        @guesses = Guess.all
        # @guesses = current_user.guesses.new
        respond_with @guesses
        # render json: @guesses
    end

    def create 
        # byebug
        guess = Guess.create(guess_params)
        redirect_to api_v1_guesses_url
    #     guess = Guess.new(guess_params)
    #     # currentgame = Currentgame.find(guess_params[:currentgame_id])
    #     if guess.save
    #         serialized_data = ActiveModelSerializers::Adapter::Json.new(
    #     GuessSerializer.new(guess)
    #         ).serializable_hash
    #   GuessesChannel.broadcast_to currentgame, serialized_data
    #   head :ok
    # end
  end

  private

  def guess_params
    params.require(:guess).permit(:value)
  end

end
