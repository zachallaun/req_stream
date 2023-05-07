defmodule ReqStream.MixProject do
  use Mix.Project

  def project do
    [
      app: :req_stream,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:req, github: "wojtekmach/req"},
      {:mneme, ">= 0.0.0", only: :test}
    ]
  end
end
