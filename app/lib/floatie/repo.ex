defmodule Floatie.Repo do
  use Ecto.Repo,
    otp_app: :floatie,
    adapter: Ecto.Adapters.SQLite3
end
