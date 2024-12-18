defmodule Neighborhood.Repo do
  use Ecto.Repo,
    otp_app: :neighborhood,
    adapter: Ecto.Adapters.Postgres
end
