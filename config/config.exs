# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :eoconnorio, EoconnorioWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "zKPvhSEhcx56lLMYAnPkj6QZEAlwqjRzQzcG7utCvTio9loGBjtcdRYpec1hr01M",
  render_errors: [view: EoconnorioWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Eoconnorio.PubSub,
  live_view: [signing_salt: "oEc5xou6"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
