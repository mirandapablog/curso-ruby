# cosas

class Perro
  def ladra( *mico )
    p mico.size
  end
end

perro = Perro.new
perro.ladra 'cac', 'b', 5
