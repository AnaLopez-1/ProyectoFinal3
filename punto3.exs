defmodule Punto3 do

  # Recursividad directa: la función se llama a sí misma
  # Lineal: cada llamada genera solo una llamada adicional
  # De cola: la llamada recursiva es la última operación, permitiendo optimización

  def balance([], acc \\ 0), do: acc
  def balance([head | tail], acc), do: balance(tail, acc + head)

  def main do
    IO.puts("Balance final: #{balance([1000, -300, 200, -100])}")
  end
end


Punto3.main()
