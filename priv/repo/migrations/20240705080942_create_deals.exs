defmodule Business.Repo.Migrations.CreateDeals do
  use Ecto.Migration

  def change do
    create table(:deals) do
      add :name, :string
      add :description, :text
      add :amount, :float
      add :deal_recipient_id, :integer
      add :deal_type, :string
      add :who_can_see, {:array, :string}, default: []

      timestamps(type: :utc_datetime)
    end
  end
end
