defmodule BusinessWeb.Dashboard.ShowDeal do
  use BusinessWeb, :live_view

  @sample_deal %{
    deal_with: "Dr. Alice Johnson",
    name: "TV installation",
    position: "Software Engineer",
    email: "alice.johnson@example.com",
    responsible_employee: "Abass Garane",
    amount: 15000,
    deal_type: "fixed bid",
    created_at: "Wed, 3rd of Aug"
  }

  def mount(_, _, socket) do
    socket = socket |> assign(:deal, @sample_deal)
    {:ok, socket |> assign(:form, %{"note" => ""})}
  end
end
