defmodule AdventOfCode.Day02 do
  def part1(args) do
    {two, three} =
      args
      |> Stream.map(&String.trim/1)
      |> Enum.to_list()
      |> IO.inspect()
      |> Enum.map(fn line ->
        chars = String.split(line, "", trim: true)

        Enum.group_by(chars, fn char ->
          Enum.count(chars, fn x -> char == x end)
        end)
      end)
      |> Enum.reduce({0, 0}, fn line, {two, three} ->
        two = two + ((line[2] && 1) || 0)
        three = three + ((line[3] && 1) || 0)
        {two, three}
      end)

    two * three
  end

  def part2(args) do
    args
    |> Stream.map(fn line ->
      args
      |> Stream.reject(fn x -> x == line end)
      |> Stream.map(&String.myers_difference(&1, line))
      |> Stream.filter(&Keyword.has_key?(&1, :eq))
      |> Stream.filter(fn x -> Enum.count(x) == 4 end)
      |> Enum.to_list()
      |> List.flatten()
    end)
    |> Stream.reject(&Enum.empty?/1)
    |> Enum.to_list()
  end
end
