import Config

config :northwind_elixir_traders, NorthwindElixirTraders.Repo,
  database: "northwind_elixir_traders_repo.db"

config :northwind_elixir_traders,
  ecto_repos: [NorthwindElixirTraders.Repo]
