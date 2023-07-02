defmodule MediumGraphqlApi.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :role, :string
    field :first_name, :string
    field :last_name, :string
    field :email, :string
    field :password_hash, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:first_name, :last_name, :email, :password_hash, :role])
    |> validate_required([:first_name, :last_name, :email, :password_hash, :role])
  end
end
