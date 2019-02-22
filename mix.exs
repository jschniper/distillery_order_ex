defmodule Repro.MixProject do
  use Mix.Project

  def project do
    [
      app: :repro,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:exometer, github: "Feuerlabs/exometer"},
      {:exometer_core, "~> 1.4", override: true},
      {:lager, "~> 3.2.1", override: true},
      {:ex_doc, "~> 0.13", only: :dev},
      {:tesla, "~> 1.0"},
      {:hackney, "~> 1.10"},
      {:distillery, "~> 2.0"},
    ]
  end
end
