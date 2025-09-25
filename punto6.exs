defmodule Punto6 do

  # Recursividad Directa, Lineal y de Cola

  def potencia(base, exp), do: potencia(base, exp, 1)
  def potencia(_, 0, cont), do: cont
  def potencia(base, exp, cont), do: potencia(base, exp - 1, cont * base)

  def main() do
    IO.puts("3^4 = #{potencia(3, 4)}")
    IO.puts("4^2 = #{potencia(4, 2)}")
    IO.puts("8^0 = #{potencia(8, 0)}")
    IO.puts("9^2 = #{potencia(9, 2)}")
  end
end

Punto6.main()
