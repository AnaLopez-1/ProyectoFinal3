defmodule Punto8 do

  # Recursividad Directa, Lineal y de Cola

  def total_pedidos(pedidos), do: total_pedidos(pedidos, 0)
  def total_pedidos([], cont), do: cont
  def total_pedidos([%{producto: _, cantidad: c} | resto], cont),
    do: total_pedidos(resto, cont + c)

  def main() do
    pedidos = [
      %{producto: "Laptop", cantidad: 3},
      %{producto: "Mouse", cantidad: 5},
      %{producto: "Teclado", cantidad: 2}
    ]
    IO.puts("Cantidad total pedida: #{total_pedidos(pedidos)}")
  end
end

Punto8.main()
