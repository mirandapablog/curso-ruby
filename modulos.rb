$LOAD_PATH << '.'
require 'patos/hablador'
require 'patos/volador'
require 'patos/pato_base'

module XYZ
  class Pato < XYZ::PatoBase
    include XYZ::Hablador
    include XYZ::Volador
  end
end

clase_pato = Kernel.const_get "XYZ::Pato"

pato = clase_pato.new
pato.vuela
puts pato.idioma
