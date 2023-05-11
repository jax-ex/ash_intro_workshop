defmodule MyAshPhoenixApp.Repo do
  ## Original Phoenix Repo
  # use Ecto.Repo,
  #   otp_app: :my_ash_phoenix_app,
  #   adapter: Ecto.Adapters.Postgres

  use AshPostgres.Repo, otp_app: :my_ash_phoenix_app

  # Installs Postgres extensions that ash commonly uses
  def installed_extensions do
    ["uuid-ossp", "citext"]
  end
end
