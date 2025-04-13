class AdminsBackoffice::AdminsController < ApplicationController
  before_action :set_admin, only: [ :edit, :update, :destroy ]
  # before_action :authenticate_admin!

  def index
    @admins = Admin.all.page(params[:page]).per(8)
  end

  def show
    @admin = Admin.find_by(id: params[:id])
    unless @admin
      flash[:alert] = "Admin não encontrado"
      redirect_to admins_backoffice_admins_path
    end
  end

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admin_params)

    if @admin.save
      redirect_to admins_backoffice_admins_path, notice: 'Admin created successfully.'
    else
      render :new
    end
  end

  def edit; end

  def update
    if @admin.update(admin_params)
      redirect_to admins_backoffice_admins_path, notice: 'Admin updated successfully.'
    else
      render :edit
    end
  end

  def destroy
    if @admin.destroy
      redirect_to admins_backoffice_admins_path, notice: 'Admin deleted successfully.'
    else
      redirect_to admins_backoffice_admins_path, alert: 'Error deleting admin.'
    end
  end

  private

  def set_admin
    @admin = Admin.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    redirect_to admins_backoffice_admins_path, alert: 'Admin not found.'
  end

  def admin_params
    params.require(:admin).permit(:name, :email, :password, :password_confirmation, :status)
  end
end
