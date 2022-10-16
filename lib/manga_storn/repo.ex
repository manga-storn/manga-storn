defmodule MangaStorn.Repo do
  use Ecto.Repo,
    otp_app: :manga_storn,
    adapter: Ecto.Adapters.Postgres
end
