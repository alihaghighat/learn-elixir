defmodule Hello do
  def hello_name1(a) do
    IO.puts("hello #{a}")
  end
  def hello_name(a) do
    "hello #{a}"
  end
  def hello_name_input() do
    a=IO.gets("Enter name : ")
    "hello #{a}"
  end
end

IO.puts(Hello.hello_name('ali'))
IO.puts(Hello.hello_name1('ali'))
IO.puts(Hello.hello_name_input())
