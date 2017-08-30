# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :frzr_api,
  ecto_repos: [FrzrApi.Repo]

# Configures the endpoint
config :frzr_api, FrzrApiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "oAGU+ghczGWYWvNLUquvJZcf9OVHnY+sOCW7hf+oJVQjZhD3pqBtntj/7NHQg99s",
  render_errors: [view: FrzrApiWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: FrzrApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
