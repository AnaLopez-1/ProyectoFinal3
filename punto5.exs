defmodule Punto5 do

  # Recursividad Directa, Lineal y de Cola
  def total_dias(reservas), do: total_dias(reservas, 0)
  def total_dias([], cont), do: cont
  def total_dias([%{dias: d} | resto], cont), do: total_dias(resto, cont + d)

  def main() do
    reservas = [
      %{cliente: "Ana", dias: 4},
      %{cliente: "Jimmy", dias: 6}
    ]
    IO.puts("Total de días reservados: #{total_dias(reservas)}")
  end

end

Punto5.main()
