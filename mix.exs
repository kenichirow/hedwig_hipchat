defmodule HedwigHipChat.Mixfile do
  use Mix.Project

  @version "0.9.0"

  def project do
    [app: :hedwig_hipchat,
     name: "Hedwig HipChat",
     version: @version,
     elixir: "~> 1.1",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     package: package,
     description: "A HipChat adapter for Hedwig",
     deps: deps]
  end

  def application do
    [applications: [:logger, :hedwig, :romeo]]
  end

  defp deps do
    [{:exml, github: "esl/exml"},
     {:hedwig, "~> 1.0.0-rc3"},
     {:romeo, "~> 0.4"}]
  end

  defp package do
    [files: ["lib", "priv", "mix.exs", "README*", "readme*", "LICENSE*", "license*"],
     maintainers: ["Johan Wärlander"],
     licenses: ["MIT"],
     links: %{
       "GitHub" => "https://github.com/jwarlander/hedwig_hipchat"
     }]
  end
end
