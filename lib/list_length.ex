defmodule ListLength do
  def call(list), do: length(list, 0)
  # or
  def call_kernel(list), do: length(list)

  defp length([], acc) do
    acc
  end

  defp length([_ | tail], acc) do
    acc = acc + 1
    length(tail, acc)
  end
end
