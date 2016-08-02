defmodule Varnum do
  @moduledoc"""
  Manages Varnum features such as fetching price, saving data, and sending mail.
  """

  @sp500_url "https://www.google.com/finance?q=INDEXSP%3A.INX&sq=INDEXSP"

  def get_price(url) do
    HTTPoison.get(url)
    |> handle_response
  end

  def get_price() do
    get_price(@sp500_url)
  end

  def handle_response({:ok, response}) do
    [{_, _, contents}] = Floki.find(response.body, ".pr span")
    dirty_price = hd(contents)
    price_value = String.replace(dirty_price, ",", "")
    String.to_float(price_value)
  end

  def handle_response({:error, _}), do: 0
end
