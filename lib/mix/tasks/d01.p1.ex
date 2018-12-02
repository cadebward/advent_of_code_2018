defmodule Mix.Tasks.D01.P1 do
  use Mix.Task

  import AdventOfCode.Day01

  @shortdoc "Day 01 Part 1"
  def run(_) do
    input = File.stream!("priv/day01/input.txt")

    input
    |> part1()
    |> IO.inspect(label: "Part 1 Results")
  end
end
