defmodule CrmPhoenix.Repo do
  use Ecto.Repo,
    otp_app: :crm_phoenix,
    adapter: Ecto.Adapters.Postgres
end
