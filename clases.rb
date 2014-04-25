# clases.rb
class Pato
  attr_accessor :color, :tamano
  attr_reader :vuela

  def initialize( nombre, color )
    @nombre = nombre
    @color = color
  end

  def asustar!
    puts "Salga volando" if vuela?
  end

  def entrenar
    @vuela = true
  end

  def vuela?
    # Llamar a wikipedia para pergunta si vuela
    if @vuela.nil?
      @vuela = false
    else
      @vuela = true
    end
    @vuela
  end

  def vuela=(vuela)
    @vuela = true
  end

end

donald = Pato.new 'Donald', 'blanco'
lucas = Pato.new 'Lucas', 'negro'

puts donald.inspect
donald.entrenar
donald.asustar!
