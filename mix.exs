defmodule Varnum.Mixfile do
  use Mix.Project

  def project do
    [app: :varnum,
     name: "Varnum",
     source_url: "https://github.com/jga/varnum",
     homepage_url: "https://github.com/jga/varnum",
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :httpoison]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [{:floki, "~> 0.9.0"},
     {:httpoison, "~> 0.9"},
     {:eiconv, github: "zotonic/eiconv"},
     {:mailman, "~> 0.2.2"},
     {:ex_doc, "~>0.12"}]
  end
end
