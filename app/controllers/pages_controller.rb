class PagesController < ApplicationController
  def about
    @members = ['Ben', 'Sarah', 'Rebecca', 'Alex', 'Anne']
  end

  def contact
    @members = ['Ben', 'Sarah', 'Rebecca', 'Alex', 'Anne']
    search = params[:query]

    if search.present?
      @members = @members.select {|name| name.downcase.start_with?(search.downcase) }
    end
  end

  def home
  end
end
