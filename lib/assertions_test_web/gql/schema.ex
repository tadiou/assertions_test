defmodule AssertionsTest.Schema do
  @moduledoc """
  Base Schema for our internal GQL
  """
  use Absinthe.Schema

  # Types
  import_types(AssertionsTestWeb.Schema.Types.User)

  # Queries
  import_types(AssertionsTestWeb.Schema.Queries.User)

  query do
    import_fields(:user_queries)
  end
end
