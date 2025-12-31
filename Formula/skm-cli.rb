class SkmCli < Formula
  desc "Sidekick Money CLI"
  homepage "https://github.com/sidekickmoney/skm-cli"
  head "https://github.com/sidekickmoney/skm-cli.git", branch: "lite"

  def install
    bin.install "bin/skm-cli.sh" => "skm-cli"
    bin.install_symlink "skm-cli" => "skm"
    libexec.install Dir["libexec/*"]
  end

  test do
    assert_match "\u{1F937}", shell_output("#{bin}/skm version")
  end
end
