class HomeController < ApplicationController
    def top
        @users=User.select("name","id","value","image","fee")
    end
end
