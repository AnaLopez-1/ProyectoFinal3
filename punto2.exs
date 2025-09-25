defmodule Punto2 do

  # Recursividad directa: la función se llama a sí misma
  # Lineal: cada llamada genera solo una llamada adicional
  # No de cola: la llamada recursiva no es la última operación (queda la suma pendiente)

  def contar_elementos_lista([]), do: 0
  def contar_elementos_lista([_| tail]), do: 1 + contar_elementos_lista(tail)

  def main() do
    list = [1, 2, 3, 4]
    IO.puts("La suma de los elementos de la lista es: #{contar_elementos_lista(list)}")
end
end

Punto2.main()
