defmodule Test.Product do
  use Test.Web, :model

  @primary_key {:ProductId, :integer, autogenerate: false}
  schema "Products" do
    field :ProductName, :string
  end
end
