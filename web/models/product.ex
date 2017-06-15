defmodule Test.Product do
  use Test.Web, :model

  schema "Products" do
    field :ProductId, :integer
    field :ProductName, :string
  end
end
