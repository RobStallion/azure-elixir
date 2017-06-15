# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :test,
  ecto_repos: [Test.Repo]

# Configures the endpoint
config :test, Test.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "TORLf9AIsgdcc9d6JC2pgTZ8YhZNvU/Q1U0ashBtJUdssYZ2Rees8HV0341ZrQVP",
  render_errors: [view: Test.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Test.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
