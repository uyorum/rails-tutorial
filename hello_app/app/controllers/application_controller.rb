class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def hello
    # not insert new line
    #render text: "hola, mundo!\n¡Hola, mundo!"
    # insert new line
    #render text: "hola, mundo!<br>¡Hola, mundo!"
    # not
    render text: <<-EOF
           hola, mundo!
           ¡Hola, mundo!
EOF
  end

  def goodbye
    render text: "goodbye, world!"
  end
end
