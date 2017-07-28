# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :software_superlative,
  ecto_repos: [SoftwareSuperlative.Repo]

# Configures the endpoint
config :software_superlative, SoftwareSuperlative.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "tQ7vUHCD/4dBaDWW+ScWD5NY8CBK+ujiSBjITWGEvpHl9NJHKQDlsOGSpiZO3VbV",
  render_errors: [view: SoftwareSuperlative.ErrorView, accepts: ~w(html json)],
  pubsub: [name: SoftwareSuperlative.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
