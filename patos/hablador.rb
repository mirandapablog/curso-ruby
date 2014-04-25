module XYZ
  module Hablador
    attr_accessor :idioma
    def habla;  puts 'cuack';          end
    def idioma; @idioma ||= 'ingles';  end
  end
end
