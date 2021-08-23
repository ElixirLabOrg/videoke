defmodule Videoke.Repo do
  use Ecto.Repo,
    otp_app: :videoke,
    adapter: Ecto.Adapters.Postgres
end
