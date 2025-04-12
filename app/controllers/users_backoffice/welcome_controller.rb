module UsersBackoffice
  class WelcomeController < UsersBackofficeController
    # before_action :authenticate_user!
    # before_action :check_user

    private

    def check_user
      redirect_to root_path, alert: "Você não tem permissão para acessar essa área." unless current_user.user?
    end
  end
end
