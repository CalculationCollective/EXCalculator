defmodule EXCalculator do
  def main do
    IO.puts("Enter the first number:")
    num1 = IO.gets("") |> String.trim() |> Float.parse() |> elem(0)

    IO.puts("Choose between:")
    IO.puts("1) Addition")
    IO.puts("2) Subtraction")
    IO.puts("3) Multiplication")
    IO.puts("4) Division")
    calculation_type = IO.gets("") |> String.trim() |> Integer.parse() |> elem(0)

    IO.puts("Enter the second number:")
    num2 = IO.gets("") |> String.trim() |> Float.parse() |> elem(0)

    result = case calculation_type do
      1 -> num1 + num2
      2 -> num1 - num2
      3 -> num1 * num2
      4 -> num1 / num2
      _ -> "#{calculation_type} is not a valid function"
    end

    IO.puts(result)
  end
end

EXCalculator.main()
