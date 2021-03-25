defmodule AssertionsTestWeb.Schema.Queries.User do
  @moduledoc """
  Fields for the user portion of the schema
  """
  use Absinthe.Schema.Notation

  alias AssertionsTest.Schema.Resolvers

  object :user_queries do
    field :user, type: :user do
      arg(:id, non_null(:id))
      resolve(&Resolvers.User.user/3)
    end
  end
end
