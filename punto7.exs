defmodule Punto7 do

  # Recursividad Directa, Lineal y de Cola

  def sumar_pares(lista), do: sumar_pares(lista, 0)

  def sumar_pares([], cont), do: cont
  def sumar_pares([h | t], cont) when rem(h, 2) == 0, do: sumar_pares(t, cont + h)
  def sumar_pares([_h | t], cont), do: sumar_pares(t, cont)

  def main() do
    lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    IO.puts("Suma de pares: #{sumar_pares(lista)}")
  end
end

Punto7.main()
