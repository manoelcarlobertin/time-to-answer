module AdminsBackoffice
  class WelcomeController < ApplicationController
    before_action :authenticate_admin!
    layout "admins_backoffice"

    def index
      @total_users = User.count
      @total_admins = Admin.count
      # @total_questions = Question.count
      # @total_subjects = Subject.count
    end
  end
end
