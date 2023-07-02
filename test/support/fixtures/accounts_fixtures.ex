defmodule MediumGraphqlApi.AccountsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `MediumGraphqlApi.Accounts` context.
  """

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        role: "some role",
        first_name: "some first_name",
        last_name: "some last_name",
        email: "some email",
        password_hash: "some password_hash"
      })
      |> MediumGraphqlApi.Accounts.create_user()

    user
  end
end
