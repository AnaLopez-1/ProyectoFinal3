defmodule Punto11 do

  # Recursividad Directa, Lineal y de Cola

  def sumar_matriz(matriz), do: sumar_matriz(matriz, 0)
  def sumar_matriz([], cont), do: cont
  def sumar_matriz([fila | resto], cont), do: sumar_matriz(resto, cont + sumar_fila(fila))

  defp sumar_fila([], acc \\ 0)
  defp sumar_fila([], acc), do: acc
  defp sumar_fila([h | t], acc), do: sumar_fila(t, acc + h)

  def main() do
    matriz = [[1, 2, 3],[4, 5, 6],[7, 8, 9]]
    IO.puts("Suma de la matriz: #{sumar_matriz(matriz)}")
  end
end

Punto11.main()
