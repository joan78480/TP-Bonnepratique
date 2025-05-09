defmodule TpBonnePratique.AccountsTest do
  use TpBonnePratique.DataCase

  alias TpBonnePratique.Accounts

  describe "users" do
    alias TpBonnePratique.Accounts.User

    import TpBonnePratique.AccountsFixtures

    @invalid_attrs %{addresses: nil, height: "test", astro_sign: 1, hobbbies: nil}
    @invalid_attrs %{}

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
        address: "some address",
        height: 42,
        astro_sign: "some astro_sign",
        hobbbies: ["option1", "option2"]
      }

      assert {:ok, %User{} = user} = Accounts.create_user(valid_attrs)
      assert user.address == "some address"
      assert user.height == 42
      assert user.astro_sign == "some astro_sign"
      assert user.hobbbies == ["option1", "option2"]
    end

    test "create_user/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Accounts.create_user(@invalid_attrs)
    end

    test "update_user/2 with valid data updates the user" do
      user = user_fixture()

      update_attrs = %{
        address: "some updated address",
        height: 43,
        astro_sign: "some updated astro_sign",
        hobbbies: ["option1"]
      }

      assert {:ok, %User{} = user} = Accounts.update_user(user, update_attrs)
      assert user.address == "some updated address"
      assert user.height == 43
      assert user.astro_sign == "some updated astro_sign"
      assert user.hobbbies == ["option1"]
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
