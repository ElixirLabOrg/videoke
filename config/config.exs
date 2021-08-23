# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :videoke,
  ecto_repos: [Videoke.Repo]

# Configures the endpoint
config :videoke, VideokeWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "yWdgXU23AWW+SPZBPc9/wNrNqv+79hm+FlaNvF/+IZrYHfvs3NccZfDO9GpLVEFI",
  render_errors: [view: VideokeWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Videoke.PubSub,
  live_view: [signing_salt: "LM0RGnBi"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
