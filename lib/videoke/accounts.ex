defmodule Videoke.Accounts do
  @moduledoc """
  The Accounts context.
  """
  alias Videoke.Accounts.User

  def list_users do
    [
      %User{id: "1", name: "Elaine Naomi", username: "elainenaomi"},
      %User{id: "2", name: "Juliana Helena", username: "julianahelena"},
      %User{id: "3", name: "Rachel Curioso", username: "rachelcurioso"}
    ]
  end

  def get_user(id) do
    Enum.find(list_users(), fn map -> map.id == id end)
  end

  def get_user_by(params) do
    Enum.find(list_users(), fn map ->
      Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
    end)
  end
end
