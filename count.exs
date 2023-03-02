defmodule Count do
  def count([],co) do
    co
  end
  def count([h|t],co) do
    count(t,1+co)
  end
end
IO.puts("count (tail recursion) [1,3,4,5,6] : #{Count.count([1,3,4,5,6],0)}")
IO.puts("count (tail recursion) [1,3,4,5,6,6,6,7,5,4] : #{Count.count([1,3,4,5,6,6,6,7,5,4],0)}")
IO.puts("count (tail recursion) [] : #{Count.count([],0)}")
#
defmodule StCounter do
  defstruct value: 0

  def start(initValue \\ 0) do
    %StCounter{value: initValue}
  end

  def inc(%NormalCounter{value: v}, i \\ 1) do
    new_value = v + i
    %StCounter{value: new_value}
  end

  def read(instance) do
    instance.value
  end
end

defmodule SimplerCounter do
  def start(initvalue \\ 0) do
    initvalue
  end

  def inc(v, i \\ 1) do
    v + i
  end

  def read(v) do
    v
  end
end
