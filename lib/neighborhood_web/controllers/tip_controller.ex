defmodule NeighborhoodWeb.TipController do
  use NeighborhoodWeb, :controller

  alias Neighborhood.Tips

  def index(conn, _params) do
    render(conn, :index, tips: Tips.list_tips())
  end

  def show(conn, %{"id" => id}) do
    render(conn, :show, tip: Tips.get_tip(id))
  end
end
