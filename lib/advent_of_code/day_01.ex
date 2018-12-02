defmodule AdventOfCode.Day01 do
  def part1(args) do
    args
    |> to_list()
    |> Enum.sum()
  end

  def part2(args) do
    args =
      args
      |> to_list()
      |> Enum.to_list()

    find_duplicate(args, {0, []}, args)
  end

  defp to_list(input) do
    Stream.map(input, fn x -> String.trim(x) |> String.to_integer() end)
  end

  defp find_duplicate([], acc, args) do
    find_duplicate(args, acc, args)
  end

  defp find_duplicate([freq | tail], {count, seen}, args) do
    new_freq = count + freq

    if Enum.member?(seen, new_freq) do
      new_freq
    else
      find_duplicate(tail, {new_freq, [new_freq | seen]}, args)
    end
  end
end
