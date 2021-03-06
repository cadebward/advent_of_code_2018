defmodule Mix.Tasks.D02.P1 do
  use Mix.Task

  import AdventOfCode.Day02

  @shortdoc "Day 02 Part 1"
  def run(_) do
    input = File.stream!("priv/day02/input.txt")

    input
    |> part1()
    |> IO.inspect(label: "Part 1 Results")
  end
end
