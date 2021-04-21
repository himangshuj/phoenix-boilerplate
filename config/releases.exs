import Config
database_url =
  System.get_env("DATABASE_URL") ||
    raise """
    environment variable DATABASE_URL is missing.
    For example: ecto://USER:PASS@HOST/DATABASE
    """

config :phoenix_boilerplate, PhoenixBoilerplate.Repo,
       # ssl: true,
       url: database_url,
       pool_size: String.to_integer(System.get_env("POOL_SIZE") || "10")

secret_key_base =
  System.get_env("SECRET_KEY_BASE") ||
    raise """
    environment variable SECRET_KEY_BASE is missing.
    You can generate one by calling: mix phx.gen.secret
    """

config :phoenix_boilerplate, PhoenixBoilerplateWeb.Endpoint,
       url: [host: nil, port: 80],
       server: true,
       http: [port: {:system, "PORT"}], 
       force_ssl: [rewrite_on: [:x_forwarded_proto]],
       cache_static_manifest: "priv/static/cache_manifest.json"
