# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :crm_phoenix,
  ecto_repos: [CrmPhoenix.Repo]

# Configures the endpoint
config :crm_phoenix, CrmPhoenixWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "KQ2SExiqorKzGJqhiVw1WYykxaB59H7HgVFqJ0kbvkCib9hK9IHGO4E7qrprXd2E",
  render_errors: [view: CrmPhoenixWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: CrmPhoenix.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
