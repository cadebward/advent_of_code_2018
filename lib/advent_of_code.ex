defmodule AdventOfCode do
  @moduledoc """
  Documentation for AdventOfCode.
  """

  alias AdventOfCode.E1

  def run do
    IO.puts(" -- Exercise 1, Part 1 -- ")

    e1_input = File.read!("input/01.txt")

    e1_input
    |> E1.P1.format()
    |> E1.P1.sum_frequencies()
    |> IO.inspect(label: "    Answer")

    IO.puts(" -- Exercise 1, Part 2 -- ")

    e1_input
    |> E1.P1.format()
    |> E1.P2.find_duplicate()
    |> IO.inspect(label: "    Answer")

    nil
  end
end
