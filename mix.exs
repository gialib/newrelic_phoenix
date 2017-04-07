defmodule NewRelicPhoenix.Mixfile do
  use Mix.Project

  def project do
    [app: :newrelic_phoenix,
     version: "0.1.0",
     elixir: "~> 1.4",
     package: package(),
     description: description(),
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [extra_applications: [:logger, :lhttpc],
     mod: {NewRelicPhoenix.Application, []}]
  end

  defp deps do
    [
      {:newrelic_erl, github: "gialib/newrelic_erl", runtime: false},
      {:phoenix, "~> 1.2.3"}
    ]
  end

  defp package do
    [
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/gialib/newrelic_phoenix"
      },
    ]
  end

  defp description do
    "Yet another New Relic elixir library targeting Phoenix and Ecto."
  end
end
