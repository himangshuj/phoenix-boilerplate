defmodule PhoenixBoilerplate.Repo do
  use Ecto.Repo,
    otp_app: :phoenix_boilerplate,
    adapter: Ecto.Adapters.Postgres
end
