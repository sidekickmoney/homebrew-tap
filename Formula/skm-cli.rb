class SkmCli < Formula
  desc "Sidekick Money CLI"
  homepage "https://github.com/sidekickmoney/skm-cli"
  url "https://github.com/sidekickmoney/skm-cli/archive/refs/tags/0.95.0-alpha1.tar.gz"
  sha256 "34027fa760c27e4b9113a8b9be5f4a5b6e67dab192cad5b063e48d943d27c044"
  head "https://github.com/sidekickmoney/skm-cli.git", branch: "lite"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on "awscli"
  depends_on "python@3.10" # various scripts use this (and need updating)
  depends_on "yq"

  def install
    bin.install "bin/cli.sh" => "skml" # TEMPORARY: should be "skm"
  end

  test do
    system "#{bin}/skml version" # TEMPORARY: should be "#{bin}/skm version"
  end
end
