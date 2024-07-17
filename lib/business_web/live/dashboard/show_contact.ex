defmodule BusinessWeb.Dashboard.ShowContact do
  use BusinessWeb, :live_view

  @sample_contact %{
    full_name: "Dr. Alice Johnson",
    position: "Software Engineer",
    address: %{
      street: "123 Main Street",
      city: "Nairobi",
      state: "Nairobi County",
      country: "Kenya",
      postal_code: "00100"
    },
    email: "alice.johnson@example.com",
    phone_number: "+254 708 123 456",
    company_name: "TechStar Inc."
  }

  def mount(_params, _session, socket) do
    socket = socket |> assign(:contact, @sample_contact)
    {:ok, socket |> assign(:form, %{"note" => ""})}
  end

  def string_address(address) do
    Map.to_list(address)
    |> Enum.join("\n")
  end
end
