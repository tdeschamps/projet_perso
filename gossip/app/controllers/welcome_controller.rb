class WelcomeController < ApplicationController
  def trash_a_friend
    @num_of_trash = params[:num].to_i
    @person_trashed = params[:name]
    @trashed_people = %w(riri fifi loulou les batards)
  end

  def contact
  end

end
