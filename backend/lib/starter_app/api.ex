defmodule StarterApp.Api do
  @moduledoc """
  The main Ash Domain for the Starter App.

  This domain contains the base Auth resources for multi-tenancy:
  - User: User accounts (can be synced from external auth service)
  - Organization: Multi-tenant organization boundaries

  Add your own domain resources here as you build your application.
  """

  use Ash.Domain

  resources do
    # Auth resources (for multi-tenancy)
    resource(StarterApp.Auth.User)
    resource(StarterApp.Auth.Organization)

    # Add your application resources here
  end
end
