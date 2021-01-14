class SessionController < ApplicationController
    def login
        @user=User.find_by(mail: params[:email],pass: params[:password])
        if @user
            session[:user_id]=@user.id
            redirect_to("/")
        else
            render("session/login_form")
        end
    end
    def signup
    end
    def mypage
        @user=User.find_by(id: session[:user_id])
        @games=Game.all
        @usergame = User.find_by(id:6)
    end
    def login_form
    end
    def create
        @user=User.new
        @user.name=params[:name]
        @user.mail=params[:email]
        @user.pass=params[:password]
        @user.save
        redirect_to("/")
    end
    def logout
        session[:user_id]= nil
        redirect_to("/")
    end
    def update
        @user=User.find_by(id: session[:user_id])
        session[:user_id]=@user.id
        @user.name=params[:name]
        @user.fee=params[:fee]
        @user.profile=params[:profile]
        @user.face=params[:face]
        if params[:image]
            @user.image="#{@user.id}.jpg"
            image = params[:image]
            File.binwrite("public/user_images/#{@user.image}", image.read)
        end
        @user.save
        redirect_to("/mypage")
    end
    def edit
        @user=User.find_by(id: session[:user_id])
        @games=Game.all
    end
end
