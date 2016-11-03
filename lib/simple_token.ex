defmodule SimpleToken do
  @moduledoc """
  SimpleToken generates random, non-cryptographic alphanumeric string tokens.
  """

  @alphabet ~w(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z a b c d e f g h i j k l m n o p q r s t u v w x y z 0 1 2 3 4 5 6 7 8 9)

  @doc """
  Generate a random string with the given length.
  The default length is set to 16 characters.

  ## Example
      iex>  SimpleToken.generate(20)
            "d5OorhI1sbwi6B7qvURg"
  """
  @spec generate(Integer.t) :: String.t
  def generate(length \\ 16), do: do_generate(length)

  defp do_generate(length) when is_integer(length) do
    @alphabet
    |> Enum.take_random(abs(length))
    |> Enum.join
  end
  defp do_generate(length) when is_float(length), do: length |> round |> do_generate
  defp do_generate(_), do: do_generate(16)

end
