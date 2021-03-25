defmodule AssertionsTestWeb.Schema.Resolvers.User do
  alias AssertionsTest.User

  @doc """
  Fetches a single user
  """
  def user(_root, _args, _info) do
    {:ok, %User{id: 1}}
  end
end
