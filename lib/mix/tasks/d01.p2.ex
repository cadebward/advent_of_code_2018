defmodule Mix.Tasks.D01.P2 do
  use Mix.Task

  import AdventOfCode.Day01

  @shortdoc "Day 01 Part 2"
  def run(_) do
    input = File.stream!("priv/day01/input.txt")

    input
    |> part2()
    |> IO.inspect(label: "Part 2 Results")
  end
end
