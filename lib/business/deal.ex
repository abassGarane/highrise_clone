defmodule Business.Deal do
  use Ecto.Schema
  import Ecto.Changeset

  schema "deals" do
    field :name, :string
    field :description, :string
    field :amount, :float
    field :deal_recipient_id, :integer
    field :category_id, :integer
    field :deal_type, Ecto.Enum, values: [:fixed_bid, :contract, :delayed]
    field :who_can_see, {:array, :integer}

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(deal, attrs) do
    deal
    |> cast(attrs, [
      :name,
      :description,
      :amount,
      :category_id,
      :deal_type,
      :who_can_see,
      :deal_recipient_id
    ])
    |> validate_required([:name, :description, :amount, :deal_type])
  end
end
