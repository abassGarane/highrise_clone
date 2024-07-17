defmodule Business.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      BusinessWeb.Telemetry,
      Business.Repo,
      {DNSCluster, query: Application.get_env(:business, :dns_cluster_query) || :ignore},
      {Phoenix.PubSub, name: Business.PubSub},
      # Start the Finch HTTP client for sending emails
      {Finch, name: Business.Finch},
      # Start a worker by calling: Business.Worker.start_link(arg)
      # {Business.Worker, arg},
      # Start to serve requests, typically the last entry
      BusinessWeb.Endpoint
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Business.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    BusinessWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
