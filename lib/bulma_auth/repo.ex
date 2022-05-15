defmodule BulmaAuth.Repo do
  use Ecto.Repo,
    otp_app: :bulma_auth,
    adapter: Ecto.Adapters.Postgres
end
