# Ejercico 3

# Procedimiento que calcula el producto cartesiano de dos colecciones usando iteradores
def producto_cartesiano(a, b)
    a.each do |x|
        b.each do |y|
            yield [x, y]
        end
    end
end