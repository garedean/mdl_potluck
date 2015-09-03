class MyDevise::SessionsController < Devise::SessionsController
  def new
    super
  end

  def create
    welcome_messages = [
      "You’re here! The day just got better!",
      "You look nice today.",
      "You brighten my day",
      "Let's do some work!",
      "Beep bop, boop. System ready.",
      "Hiya! Heya!",
      "Why, hello there!",
      "You smell nice today.",
      "You're awesome. That's all.",
      "Beep bop, boop. System ready.",
      "You + Me = Dream Team",
      "Let's do this. Together!",
      "What good shall we do today?"
    ]
    super
    flash[:notice] = welcome_messages.sample
  end

  def destroy
    super
  end
end
