defmodule Punto1 do

  # Recursividad directa: la función se llama a sí misma
  # Lineal: cada llamada genera solo una llamada adicional
  # No de cola: la llamada recursiva no es la última operación (queda la multiplicación pendiente)

  def factorial(0), do: 1 # caso base
  def factorial(n), do: n * factorial(n - 1) # caso recursivo

  def main() do
    IO.puts("El factorial de 5 es: #{factorial(5)}")
  end

end
Punto1.main()
