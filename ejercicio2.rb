#Ejercicio 2

#Clase Moneda
class Moneda
    attr_accessor :cantidad
    def initialize(cantidad)
        @cantidad = cantidad
    end

    def en(moneda)
        case moneda
        when :dolares
            self.cambiar_a_dolares
        when :euros
            self.cambiar_a_euros
        when :yens
            self.cambiar_a_yens
        when :bolivares
            self.cambiar_a_bolivares
        when :bitcoins
            self.cambiar_a_bitcoins
        else
            raise ArgumentError.new('Moneda invalida')
        end
    end

    def comparar(moneda)
        valor_moneda = moneda.en(clase_a_simbolo(self))
        if valor_moneda < @cantidad
            :mayor
        elsif valor_moneda > @cantidad
            :menor
        else
            :igual
        end
    end

    def clase_a_simbolo(clase)
        case clase
        when Dolar
            :dolares
        when Euro
            :euros
        when Yen
            :yens
        when Bolivar
            :bolivares
        when Bitcoin
            :bitcoins
        else
            raise ArgumentError.new('Clase invalida')
        end
    end
end

#Clase Dolar
class Dolar < Moneda
    def cambiar_a_dolares
        @cantidad
    end

    def cambiar_a_euros
        @cantidad * 0.91
    end

    def cambiar_a_yens
        @cantidad * 147.59
    end

    def cambiar_a_bolivares
        @cantidad * 35.5
    end

    def cambiar_a_bitcoins
        @cantidad * 0.000026
    end
end
        
#Clase Euro
class Euro < Moneda
    def cambiar_a_dolares
        @cantidad * 1.0989010989010989010989010989011
    end

    def cambiar_a_euros
        @cantidad
    end

    def cambiar_a_yens
        @cantidad * 161.64
    end

    def cambiar_a_bolivares
        @cantidad * 38.92
    end

    def cambiar_a_bitcoins
        @cantidad * 0.000029
    end
end

#Clase Yen
class Yen < Moneda
    def cambiar_a_dolares
        @cantidad * 0.00677552679720848295955010502067
    end

    def cambiar_a_euros
        @cantidad * 0.00618658747834694382578569660975
    end

    def cambiar_a_yens
        @cantidad
    end

    def cambiar_a_bolivares
        @cantidad * 0.24
    end

    def cambiar_a_bitcoins
        @cantidad * 0.00000018
    end
end

#Clase Bolivar
class Bolivar < Moneda
    def cambiar_a_dolares
        @cantidad * 0.02816901408450704225352112676056
    end

    def cambiar_a_euros
        @cantidad * 0.025693730729701953
    end

    def cambiar_a_yens
        @cantidad * 4.166666666666667
    end

    def cambiar_a_bolivares
        @cantidad
    end

    def cambiar_a_bitcoins
        @cantidad * 0.00000075
    end
end

#Clase Bitcoin
class Bitcoin < Moneda
    def cambiar_a_dolares
        @cantidad * 38461.53846153846
    end

    def cambiar_a_euros
        @cantidad * 34482.75862068965
    end

    def cambiar_a_yens
        @cantidad * 5555555.555555556
    end

    def cambiar_a_bolivares
        @cantidad * 1333333.3333333333
    end

    def cambiar_a_bitcoins
        @cantidad
    end
end

# Definir métodos sobre la clase Float que conviertan el flotante en cada moneda
class Float
    def dolares
        Dolar.new(self)
    end

    def euros
        Euro.new(self)
    end

    def yens
        Yen.new(self)
    end

    def bolivares
        Bolivar.new(self)
    end

    def bitcoins
        Bitcoin.new(self)
    end
end