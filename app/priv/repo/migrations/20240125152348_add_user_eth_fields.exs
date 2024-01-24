defmodule Floatie.Repo.Migrations.AddUserEthFields do
  use Ecto.Migration

  def change do
    drop index(:users, [:email])

    alter table(:users) do
      add :eth_address, :string, null: false
      add :eth_nonce, :string, null: false
      remove :hashed_password
      remove :email
    end

    alter table(:users) do
      add :email, :string
    end

    create unique_index(:users, [:eth_address])
  end
end
