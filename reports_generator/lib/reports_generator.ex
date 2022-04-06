defmodule ReportsGenerator do
  def build(filename) do
    "reports/#{filename}"
    |> File.stream!()
    #|> Enum.map(&parse_line/1)
    #|> Enum.map(fn line -> parse_line(line) end)
    |> Enum.reduce(report_acc(), fn (line, report) ->
      [id, _food_name, price] = parse_line(line)
      Map.put(report, id, report[id] + price);
    end)
  end

  defp parse_line(line) do # Private function.
    line
    |> String.trim()
    |> String.split(",")
    #|> List.update_at(2, &String.to_integer/1) using & to call function
    |> List.update_at(2, fn elem -> String.to_integer(elem) end)
  end

  # Enum.into(1..30, %{}, fn elem -> {Integer.to_string(elem), 0} end
  defp report_acc, do: Enum.into(1..30, %{}, &{Integer.to_string(&1), 0});
end
