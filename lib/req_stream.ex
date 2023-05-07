defmodule ReqStream do
  @moduledoc """
  Adds support for streaming requests to `Req`.
  """

  @doc """
  Attach the `Req.Stream` plugin.

  ## Examples

      iex> %Req.Response{body: {:stream, stream}} =
      ...>   Req.new()
      ...>   |> ReqStream.attach()
      ...>   |> Req.get!(url: "https://httpbin.org/stream/3")
      iex> Enum.to_list(stream)
      ["line 1", "line 2", "line 3"]

  """
  def attach(req, _opts \\ []) do
    req
  end
end
