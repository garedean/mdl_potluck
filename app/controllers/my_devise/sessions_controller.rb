class MyDevise::SessionsController < Devise::SessionsController
  def new
    super
  end

  def create
    welcome_messages = [
      "What cannot be accomplished on such a splendid day?!",
      "You’re here! The day has begun!",
      "You look nice today.",
      "You brighten my day",
      "Let's do some work!",
      "Work work work..work work",
      "Hiya! Heya!",
      "Why, hello there!",
      "You smell nice today",
      "You're awesome. That's all.",
      "Ready to do your bidding.",
      "Beep bop, boop. System ready.",
      "You + Me = Dream Team"
    ]
    super
    flash[:notice] = welcome_messages.sample
  end

  def destroy
    super
  end
end
