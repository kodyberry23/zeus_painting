defmodule ZeusPainting.Repo do
  use Ecto.Repo,
    otp_app: :zeus_painting,
    adapter: Ecto.Adapters.Postgres
end
