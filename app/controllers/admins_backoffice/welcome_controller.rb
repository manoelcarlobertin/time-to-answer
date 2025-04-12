module AdminsBackoffice
  class WelcomeController < ApplicationController
    layout "admins_backoffice"
    # before_action :authenticate_user!
    # before_action :check_admin

    private

    def check_admin
      redirect_to root_path, alert: "Você não tem permissão para acessar essa área." unless current_user.admin?
    end
  end
end
