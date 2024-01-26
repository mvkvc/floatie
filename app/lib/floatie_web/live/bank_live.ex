defmodule FloatieWeb.BankLive do
  use FloatieWeb, :live_view

  @impl true
  def render(assigns) do
    ~H"""

    """
  end

  @impl true
  def mount(_params, _session, socket) do
    if connected?(socket) do
    end

    {:ok, socket}
  end
end
