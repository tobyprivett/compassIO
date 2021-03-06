use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :compassIO, CompassIO.Endpoint,
  secret_key_base: System.get_env("SECRET_KEY_BASE")

# Configure your database
config :compassIO, CompassIO.Repo,
  adapter: Ecto.Adapters.Postgres,
  url: System.get_env("DATABASE_URL"),
  pool_size: 20,
  extensions: [{Geo.PostGIS.Extension, library: Geo}]

config :compassIO, :basic_auth, [
  realm: "Under Construction!",
  username: System.get_env("DEV_USER"),
  password: System.get_env("DEV_PWD")
]
