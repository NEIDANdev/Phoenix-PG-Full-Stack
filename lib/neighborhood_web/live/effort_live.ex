defmodule NeighborhoodWeb.EffortLive do
  use NeighborhoodWeb, :live_view

  def mount(_params, _session, socket) do
    {:ok, assign(socket, responder: 0, minutes_per_responder: 10)}
  end

  def render(assigns) do
    ~H"""
    <div class="effort">
      <h1>Community Love</h1>
      <section>
        <button phx-click="increment" phx-value-number="3">
          +
        </button>
        <div>
          {@responder}
        </div>
        &times;
        <div>
          {@minutes_per_responder}
        </div>
        =
        <div>
          {@responder * @minutes_per_responder}
        </div>
      </section>
      <form phx-submit="recalculate">
        <label>Minutes Per Responder:</label>
        <input type="number" name="minutes_per_responder" value={@minutes_per_responder} />
      </form>
    </div>
    """
  end

  def handle_event("increment", %{"number" => number}, socket) do
    {:noreply, update(socket, :responder, &(&1 + String.to_integer(number)))}
  end

  def handle_event("recalculate", %{"minutes_per_responder" => minutes_per_responder}, socket) do
    {:noreply, assign(socket, :minutes_per_responder, String.to_integer(minutes_per_responder))}
  end
end
