defmodule MediumGraphqlApi.AccountsTest do
  use MediumGraphqlApi.DataCase

  alias MediumGraphqlApi.Accounts

  describe "users" do
    alias MediumGraphqlApi.Accounts.User

    import MediumGraphqlApi.AccountsFixtures

    @invalid_attrs %{role: nil, first_name: nil, last_name: nil, email: nil, password_hash: nil}

    test "list_users/0 returns all users" do
      user = user_fixture()
      assert Accounts.list_users() == [user]
    end

    test "get_user!/1 returns the user with given id" do
      user = user_fixture()
      assert Accounts.get_user!(user.id) == user
    end

    test "create_user/1 with valid data creates a user" do
      valid_attrs = %{
        role: "some role",
        first_name: "some first_name",
        last_name: "some last_name",
        email: "some email",
        password_hash: "some password_hash"
      }

      assert {:ok, %User{} = user} = Accounts.create_user(valid_attrs)
      assert user.role == "some role"
      assert user.first_name == "some first_name"
      assert user.last_name == "some last_name"
      assert user.email == "some email"
      assert user.password_hash == "some password_hash"
    end

    test "create_user/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Accounts.create_user(@invalid_attrs)
    end

    test "update_user/2 with valid data updates the user" do
      user = user_fixture()

      update_attrs = %{
        role: "some updated role",
        first_name: "some updated first_name",
        last_name: "some updated last_name",
        email: "some updated email",
        password_hash: "some updated password_hash"
      }

      assert {:ok, %User{} = user} = Accounts.update_user(user, update_attrs)
      assert user.role == "some updated role"
      assert user.first_name == "some updated first_name"
      assert user.last_name == "some updated last_name"
      assert user.email == "some updated email"
      assert user.password_hash == "some updated password_hash"
    end

    test "update_user/2 with invalid data returns error changeset" do
      user = user_fixture()
      assert {:error, %Ecto.Changeset{}} = Accounts.update_user(user, @invalid_attrs)
      assert user == Accounts.get_user!(user.id)
    end

    test "delete_user/1 deletes the user" do
      user = user_fixture()
      assert {:ok, %User{}} = Accounts.delete_user(user)
      assert_raise Ecto.NoResultsError, fn -> Accounts.get_user!(user.id) end
    end

    test "change_user/1 returns a user changeset" do
      user = user_fixture()
      assert %Ecto.Changeset{} = Accounts.change_user(user)
    end
  end
end
