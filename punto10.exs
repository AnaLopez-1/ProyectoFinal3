defmodule Punto10 do

  # Recursividad Directa, Múltiple y  No de cola

  def rutas(nil, _objetivo), do: []

  def rutas({valor, nil, nil}, objetivo) when valor == objetivo, do: [[valor]]
  def rutas({_, nil, nil}, _objetivo), do: []

  def rutas({valor, izquierda, derecha}, objetivo) do
    rutas_izquierda = for camino <- rutas(izquierda, objetivo - valor), do: [valor | camino]
    rutas_derecha = for camino <- rutas(derecha, objetivo - valor), do: [valor | camino]
    rutas_izquierda ++ rutas_derecha
  end

  def main() do
    arbol = {5,{4, {11, {7, nil, nil}, {2, nil, nil}}, nil},{8, {13, nil, nil}, {4, nil, {1, nil, nil}}}}

    objetivo = 22
    IO.puts("Rutas con suma #{objetivo}:")
    Enum.each(rutas(arbol, objetivo), fn r -> IO.inspect(r) end)
  end
end

Punto10.main()
