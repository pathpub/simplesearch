defmodule Simplesearch.MixProject do
  use Mix.Project

  def project do
    [
      app: :simplesearch,
      version: "0.1.0",
      elixir: "~> 1.16",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      elixirc_paths: elixirc_paths(Mix.env())
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      included_applications: [:mnesia]
    ]
  end

  defp elixirc_paths(:dev), do: ["lib", "fixtures"]
  defp elixirc_paths(:test), do: ["lib", "fixtures"]
  defp elixirc_paths(_), do: ["lib"]

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
      {:stemmer, git: "https://github.com/fredwu/stemmer.git", tag: "v1.2.0"},
      {:trieval, git: "https://github.com/pathpub/trieval.git", tag: "v1.0.0"},
    ]
  end
end
