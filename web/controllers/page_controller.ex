defmodule Test.PageController do
  use Test.Web, :controller
  alias Test.Product

  def index(conn, _params) do
    query = from p in Product, select: p."ProductName"
    Repo.all(query)
    |> IO.inspect(label: "------> Smelly ")
    render conn, "index.html"
  end
end
