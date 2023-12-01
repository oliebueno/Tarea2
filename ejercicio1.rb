#Ejercicio 1

#Clase circulo

class Circulo
    include Math
    attr_accessor :radio
    def initialize(radio)
        if radio < 0
            raise ArgumentError.new('Radio invalido')
        end
        @radio = radio
    end
    def area
        PI * @radio**2
    end
end

#Clase cilindro
class Cilindro < Circulo
    attr_accessor :altura
    def initialize(radio, altura)
        if altura < 0
            raise ArgumentError.new('Altura invalida')
        end
        super(radio)
        @altura = altura
    end

    def area
        2 * PI * @radio * (@radio + @altura)
    end

    def volumen
        PI * @radio**2 * @altura
    end
end
