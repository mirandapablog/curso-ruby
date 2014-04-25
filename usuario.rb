# usuario.rb
require 'pp'

class Usuario
  attr_accessor :email, :baneado, :porno

  def initialize( nickname )
    @nickname = nickname
  end

  def baneado?
    @baneado ||= preguntar_tube8_si_tiene_usuario?
  end

  private

  def preguntar_tube8_si_tiene_usuario?
    puts 'searching tube8....'
    puts '...'
  end

end

class Administrador < Usuario
  attr_reader :es_admin
  def initialize( nickname )
    super( nickname )
    @es_admin = true
  end

  protected

  def latigo!
    puts "Trabaja Miranda!"
  end
end

class SuperAdmin < Administrador
  def despedir!
    puts 'A la mierda'
  end
end

jman = Usuario.new 'jman'
manolo = Administrador.new 'manoloweb'
jefe = SuperAdmin.new 'jefe'

#manolo.latigo!
jefe.latigo!
