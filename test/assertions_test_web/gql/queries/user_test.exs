defmodule AssertionsTestWeb.Schema.Queries.UserTest do
  use AssertionsTest.DataCase

  test "resolves correctly" do
    """
    query {
      user {
        #{document_for(:user)}
      }
    }
    """
    |> assert_response_matches do
      %{
        "user" => %{
          "id" => _id
        }
      }
    end
  end
end
