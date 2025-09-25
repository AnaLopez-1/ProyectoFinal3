defmodule Punto9 do

  # Recursividad Directa, Múltiple y  No de cola

  def permutaciones([]), do: [[]]

  def permutaciones(lista) do
    for elem <- lista,
        resto <- permutaciones(List.delete(lista, elem)) do
      [elem | resto]
    end
  end

  def main() do
    lista = [1, 2, 3]
    IO.puts("Permutaciones de #{inspect(lista)}:")
    Enum.each(permutaciones(lista), fn p -> IO.inspect(p) end)
  end
end

Punto9.main()
