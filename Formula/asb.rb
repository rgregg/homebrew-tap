class Asb < Formula
  desc "Command line for the agent secret broker: use credentials without ever seeing them"
  homepage "https://github.com/rgregg/agent-secret-broker"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rgregg/agent-secret-broker/releases/download/v0.5.0/asb-macos-arm64.tar.gz"
      sha256 "945be6c915fc00aad5c9e0d4d25949ee040574daf5564ce7d4f96da40a430f17"
    end
    on_intel do
      url "https://github.com/rgregg/agent-secret-broker/releases/download/v0.5.0/asb-macos-amd64.tar.gz"
      sha256 "c71bb0c23c4be911729aec56ba033af77333b782ad63ed69f49d76bec19573d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rgregg/agent-secret-broker/releases/download/v0.5.0/asb-linux-arm64.tar.gz"
      sha256 "aea375d00df2a3f45aa4dc6e21f4393c380e53ef50143a45cb9b197c00596ef2"
    end
    on_intel do
      url "https://github.com/rgregg/agent-secret-broker/releases/download/v0.5.0/asb-linux-amd64.tar.gz"
      sha256 "eef95aca74af64027e8adb165a69f561533506e5460d54c56134d6cf6179ca3d"
    end
  end

  def install
    bin.install "asb"
  end

  test do
    assert_match "ask the broker for a secret", shell_output("#{bin}/asb help 2>&1")
  end
end
