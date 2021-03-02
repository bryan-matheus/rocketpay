defmodule Rocketpay.Users.CreateTest do
  use Rocketpay.DataCase
  alias Rocketpay.User
  alias Rocketpay.Users.Create

  describe "call/1" do
    test "when all params all valid, returns an user" do
      params = %{
        name: "Bryan",
        nickname: "matheus",
        password: "123456",
        email: "bryan@matheus.com",
        age: 19
      }

      {:ok, %User{id: user_id}} = Create.call(params)
      user = Repo.get(User, user_id)

      assert %User{
        id: ^user_id,
        name: "Bryan",
        age: 19
      } = user
    end
  end
end
