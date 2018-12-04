defmodule Mix.Tasks.D02.P2 do
  use Mix.Task

  import AdventOfCode.Day02

  @shortdoc "Day 02 Part 2"
  def run(_) do
    input = File.stream!("priv/day02/input.txt")

    input
    |> part2()
    |> IO.inspect(label: "Part 2 Results")
  end
end
