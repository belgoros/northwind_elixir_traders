defmodule NorthwindElixirTraders.MixProject do
  use Mix.Project

  def project do
    [
      app: :northwind_elixir_traders,
      version: "0.1.0",
      elixir: "~> 1.17",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :inets],
      mod: {NorthwindElixirTraders.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ecto_sqlite3, "~> 0.19.0"},
      {:tzdata, "~> 1.1"}
    ]
  end
end
