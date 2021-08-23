defmodule VideokeWeb.UserView do
  use VideokeWeb, :view

  alias Videoke.Accounts

  def first_name(%Accounts.User{name: name}) do
    name
    |> String.split(" ")
    |> Enum.at(0)
  end
end
