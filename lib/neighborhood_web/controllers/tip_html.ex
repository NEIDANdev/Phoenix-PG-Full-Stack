defmodule NeighborhoodWeb.TipHTML do
  use NeighborhoodWeb, :html

  embed_templates "tip_html/*"

  def show(assigns) do
    ~H"""
    <div class="tips">
      <h1>Want a tip, {@answer}?</h1>
      <p>
        {@tip.text}
      </p>
    </div>
    """
  end
end
