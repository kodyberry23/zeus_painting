# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of Mix.Config.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
use Mix.Config

# Configure Mix tasks and generators
config :zeus_painting,
  ecto_repos: [ZeusPainting.Repo]

config :zeus_painting_web,
  ecto_repos: [ZeusPainting.Repo],
  generators: [context_app: :zeus_painting]

# Configures the endpoint
config :zeus_painting_web, ZeusPaintingWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "3DdXP1h3HJdfjzUhtF/SC/dEqwDcWrU/+cyMGtgcED3HAG9bPx+VVQK/GmdOMuef",
  render_errors: [view: ZeusPaintingWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ZeusPainting.PubSub,
  live_view: [signing_salt: "+jRwYIio"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
