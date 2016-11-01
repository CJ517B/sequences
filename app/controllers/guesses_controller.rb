class GuessesController < ApplicationController
  def index
    if params["first_num"] ==nil
      render ("guesses/index.html.erb")
    else
      g = Guess.new
      g.first_num = params["first_num"].to_i
      g.second_num = params["second_num"].to_i
      g.third_num = params["third_num"].to_i
      if (g.first_num<g.second_num && g.second_num<g.third_num)
        g.result="Yes!"
      else g.result="No."
      end
      g.save
    end

    @list=Guess.all

  end

  def answer
    # params = {"q"=>"Increasing numbers"}
    @user_answer = params["user_answer"]
    render ("guesses/answer.html.erb")
  end

  def clear
    Guess.destroy_all
      render ("guesses/index.html.erb")
  end

end
