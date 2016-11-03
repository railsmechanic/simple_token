defmodule SimpleToken.Mixfile do
  use Mix.Project

  def project do
    [app: :simple_token,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     package: package(),
     deps: deps()]
  end

  def application do
    [applications: [:logger]]
  end

  defp description do
    """
    SimpleToken generates random, non-cryptographic alphanumeric string tokens.
    """
  end

  defp package do
    [
      name: :simple_token,
      licenses: ["MIT"],
      maintainers: [],
      links: %{
        "GitHub" => "https://github.com/railsmechanic/simple_token"
      }
    ]
  end

  defp deps do
    [
      {:ex_doc, "~> 0.14.3", only: :dev},
      {:earmark, "~> 1.0.2", only: :dev}
    ]
  end
end
