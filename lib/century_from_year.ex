defmodule CenturyFromYear do

  def centuryFromYear(year) when year >= 1 and year <= 2005 do
    cond do
      year < 100 -> 1
      length(Integer.digits(year)) < 4 -> 
        [ y, _1 | [last_digit] ] = String.split(Kernel.inspect(year), "", trim: true)
        { cent, _} = Integer.parse(y)
        cond do
          last_digit =="0" -> cent
          true -> 1 + cent
        end
        true -> 
          [ y, a, _ | [last_digit] ] = String.split(Kernel.inspect(year), "", trim: true)
          cond do
            last_digit == "0" -> String.to_integer(y <> a)
            true -> 1 + String.to_integer(y <> a)
          end
    end
  end


end