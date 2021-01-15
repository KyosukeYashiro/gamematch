class HomeController < ApplicationController
    def top
        @users=User.select("name","id","value","image","fee")
        @games=Game.select("name","image")
    end
end
