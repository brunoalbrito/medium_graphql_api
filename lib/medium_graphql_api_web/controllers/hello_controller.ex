defmodule MediumGraphqlApiWeb.HelloController do
  use MediumGraphqlApiWeb, :controller

  def index(conn, __params) do
    json(conn, %{id: "messenger"})
  end
end
