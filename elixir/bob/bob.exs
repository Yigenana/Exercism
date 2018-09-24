defmodule Bob do
  def hey(input) do
    uppercase = fn x -> String.replace(x, ~r/\d/, ""); x == String.upcase(x) end
    cond do
      String.replace(input, " ", "") == "" -> "Fine. Be that way!"
      String.ends_with?(input, "?") && uppercase.(input) -> "Calm down, I know what I'm doing!"
      String.ends_with?(input, "?") -> "Sure."
      uppercase.(input) -> "Whoa, chill out!"
      true -> "Whatever."
    end
  end
end
