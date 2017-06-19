defmodule Test.PageController do
  use Test.Web, :controller
  alias Test.Product

  def index(conn, _params) do
    query = from p in Product, where: p."ProductName" == "katbow"
    Repo.all(query)
    |> IO.inspect(label: "===> over here")
    render conn, "index.html"
  end
end
