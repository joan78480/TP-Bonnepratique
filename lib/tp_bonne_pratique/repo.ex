defmodule TpBonnePratique.Repo do
  use Ecto.Repo,
    otp_app: :tp_bonne_pratique,
    adapter: Ecto.Adapters.Postgres
end
