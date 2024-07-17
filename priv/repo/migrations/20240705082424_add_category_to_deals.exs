defmodule Business.Repo.Migrations.AddCategoryToDeals do
  use Ecto.Migration

  def change do
    alter table(:deals) do
      add :category_id, :integer
    end
  end
end
