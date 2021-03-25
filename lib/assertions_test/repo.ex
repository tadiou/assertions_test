defmodule AssertionsTest.Repo do
  use Ecto.Repo,
    otp_app: :assertions_test,
    adapter: Ecto.Adapters.Postgres
end
