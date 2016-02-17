class UsersController < ApplicationController
def index
  @users=User.all
end
def new
  @user=User.new
end
def create
  @user = User.create(user_params)
  if @user.save
            redirect_to registered_index_path,  :notice => "Your post was saved"
  end
end

private

def user_params
  params.require(:user).permit(:Name, :Email, :City, :Age)
end
    def view

    end

    def update

    end

    def destroy

    end
end
