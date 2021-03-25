# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :assertions_test,
  ecto_repos: [AssertionsTest.Repo]

# Configures the endpoint
config :assertions_test, AssertionsTestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "JM/wMeWE/+qFTL+0bJB5wDpW6Ihpgm9TYQ+R6FdWlqJn3lU1jQjkeemPJe00H55T",
  render_errors: [view: AssertionsTestWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: AssertionsTest.PubSub,
  live_view: [signing_salt: "mh3p1gyG"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
