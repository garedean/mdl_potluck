class MyDevise::SessionsController < Devise::SessionsController
  def new
    super
  end

  def create
    welcome_messages = [
      "You’re here! The day just got better!",
      "Beep bop, boop. System ready.",
      "You look nice today.",
      "Let's do some work!",
      "Beep bop, boop. System ready.",
      "Hiya! Heya!",
      "Why, hello there!",
      "You smell nice today.",
      "You're awesome. That's all.",
      "Beep bop, boop. System ready.",
      "You + Me = Dream Team",
      "Let's do this. Together!",
      "What good shall we do today?",
      "We’re in this together.",
      "You're the best.",
      "Welcome, you are awesome!",
      "I like you. A LOT.",
      "Alright world, time to take you on!"

    ]
    super
    flash[:notice] = welcome_messages.sample
  end

  def destroy
    super
  end
end
