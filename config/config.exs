# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phoenix_boilerplate,
  ecto_repos: [PhoenixBoilerplate.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :phoenix_boilerplate, PhoenixBoilerplateWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "cUlyYzXHa69jGFi4m75/UCB0KKOVFCJ/JN0ZYTpwQA4CqkKB4uokh7xzh2iwplPl",
  render_errors: [view: PhoenixBoilerplateWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PhoenixBoilerplate.PubSub,
  live_view: [signing_salt: "1wQT3/s7"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
