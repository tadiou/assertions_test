defmodule AssertionsTestWeb.Schema.Types.User do
  use Absinthe.Schema.Notation
  import_types(Absinthe.Type.Custom)

  object :user do
    field :id, non_null(:id)
  end
end
