defmodule Server.AccountsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Server.Accounts` context.
  """

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        age: 120.5,
        location: "some location",
        name: "some name"
      })
      |> Server.Accounts.create_user()

    user
  end
end
