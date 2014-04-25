# metodos.rb
require 'pp'

class Amigo
  attr_accessor :nombre, :edad

  def saludar
    puts 'Hola ' + @nombre
  end
end

amigo = Amigo.new
amigo.nombre = "javier"
amigo.edad = 3
amigo.saludar
