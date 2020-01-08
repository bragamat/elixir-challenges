defmodule Calculate do
  
  def shape_area(n) when 104 > n and n >= 1  do
    current = multiply(n)
    lesser = multiply(n - 1)
    sum(current, lesser)
  end 

  def multiply(n) do
    n * n
  end

  def sum(n, lesser) do
    n + lesser
  end
end