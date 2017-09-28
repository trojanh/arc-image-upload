# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :imageer,
  ecto_repos: [Imageer.Repo]

# Configures the endpoint
config :imageer, Imageer.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "al9SGZ9S3lTnZEwtA80s5jpzgZOizsMJk4cZ8rA23fyAMhw9XoFQUSe65lGUV2hR",
  render_errors: [view: Imageer.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Imageer.PubSub,
           adapter: Phoenix.PubSub.PG2],
  http: [protocol_options: [max_request_line_length: 8192, max_header_value_length: 8192, max_headers: 500]]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
