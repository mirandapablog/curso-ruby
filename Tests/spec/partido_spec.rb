require 'spec_helper'

require 'equipo'
require 'partido'

describe "Partido de Football" do
  describe "Marcador" do

    context "al iniciar el partido" do
      it "marcador debe ser 0 a 0" do
        equipo1 = Equipo.new('Equipo 1')
        equipo2 = Equipo.new('Equipo 2')

        partido = Partido.new( equipo1, equipo2 )

        partido.marcador.should == {equipo1: 0, equipo2: 0 }
      end
    end


    context "un equipo anota un gol" do

      it "marcador debe ser 1 a 0" do
        equipo1 = Equipo.new('Equipo 1')
        equipo2 = Equipo.new('Equipo 2')

        partido = Partido.new( equipo1, equipo2 )

        partido.anotacion(equipo1)

        partido.marcador.should == {equipo1: 1, equipo2: 0 }
      end
    end

    context "de un partido finalizado" do
      it "no debe ser posible modificar el marcador" do
        equipo1 = Equipo.new('Equipo 1')
        equipo2 = Equipo.new('Equipo 2')

        partido = Partido.new( equipo1, equipo2 )

        partido.anotacion(equipo1)

        partido.finalizar!
        expect {
          partido.anotacion(equipo1)
        }.to raise_error PartidoFinalizado


      end
    end

  end

  describe "Equipos" do
    pending
  end

  describe "Tiempo" do
    pending
  end

  describe "Cancha" do
    pending
  end
end
