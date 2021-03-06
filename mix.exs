defmodule Browser.Mixfile do
  use Mix.Project

  def project do
    [app: :browser,
     version: "0.1.5",
     name: "browser",
     source_url: "https://github.com/tuvistavie/elixir-browser",
     homepage_url: "https://github.com/tuvistavie/elixir-browser",
     package: package,
     description: description,
     licenses: "MIT",
     elixir: "~> 1.1",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  defp description do
    "Browser detection library"
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README.md", "LICENSE", "bots.txt", "search_engines.txt"],
      maintainers: ["Daniel Perez"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/tuvistavie/elixir-browser"}
    ]
  end

  def application do
    [applications: [:logger]]
  end

  defp deps do
    [{:earmark, "~> 0.2", only: :dev},
     {:ex_doc, "~> 0.12", only: :dev},
     {:mix_test_watch, "~> 0.2", only: :dev}]
  end
end
