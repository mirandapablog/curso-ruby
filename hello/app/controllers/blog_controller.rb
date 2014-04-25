class BlogController < ApplicationController
  def index
    @posts = [
              {:title => "Hola",
                :content => "Spsdkdjalsdfj;dsaljf;aksdjf"
              },
              {
                :title => "Adios",
                :content => "Ya es viernes"
              }
             ]


    render json: @posts

  end
end
