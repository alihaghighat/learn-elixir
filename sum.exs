defmodule Sum do
  def sum([],acc) do
    acc
  end
  def sum([h|t],acc) do
      sum(t,h+acc)
  end
end

IO.puts("sum (tail recursion) [1,3,4,5,6] : #{Sum.sum([1,3,4,5,6],0)}")
IO.puts("sum (tail recursion) [1,500,4,5,6] : #{Sum.sum([1,500,4,5,6],0)}")
