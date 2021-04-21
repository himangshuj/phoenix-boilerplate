import Config
config :phoenix_boilerplate, PhoenixBoilerplateWeb.Endpoint,
       url: [host: nil, port: 80],
       force_ssl: [rewrite_on: [:x_forwarded_proto]],
       cache_static_manifest: "priv/static/cache_manifest.json"

# Do not print debug messages in production
config :logger, level: :info

database_url =
  System.get_env("DATABASE_URL") ||
    raise """
    environment variable DATABASE_URL is missing.
    For example: ecto://USER:PASS@HOST/DATABASE
    """

config :phoenix_boilerplate, PhoenixBoilerplate.Repo,
       # ssl: true,
       url: database_url,
       pool_size: String.to_integer(System.get_env("POOL_SIZE") || "2")
