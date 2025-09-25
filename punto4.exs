defmodule Punto4 do

  # Recursividad directa: la función se llama a sí misma
  # Lineal: cada llamada genera solo una llamada adicional
  # De cola: la llamada recursiva es la última operación, permitiendo optimización


  # Caso base: lista vacía -> no se encontró el elemento
  def contiene([], _), do: false

  # Caso cuando la cabeza es igual al elemento
  def contiene([elem | _], elem), do: true

  # Caso cuando la cabeza NO es igual, sigue buscando en la cola
  def contiene([_ | tail], elem), do: contiene(tail, elem)

  def main do
    IO.puts(contiene([1, 3, 5, 7], 5))   # true
    IO.puts(contiene([1, 3, 5, 7], 10))  # false
  end
end

Punto4.main()
