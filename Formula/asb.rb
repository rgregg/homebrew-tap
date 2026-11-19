class Asb < Formula
  desc "Command line for the agent secret broker: use credentials without ever seeing them"
  homepage "https://github.com/rgregg/agent-secret-broker"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rgregg/agent-secret-broker/releases/download/v0.4.0/asb-macos-arm64.tar.gz"
      sha256 "104198a915a1a57f319407ee1d087375808c4523eea3b322682eded63255b640"
    end
    on_intel do
      url "https://github.com/rgregg/agent-secret-broker/releases/download/v0.4.0/asb-macos-amd64.tar.gz"
      sha256 "7afc89a11bf26d101d812696684322c0ef75b3f012fb05b98adf4a71cc8576db"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rgregg/agent-secret-broker/releases/download/v0.4.0/asb-linux-arm64.tar.gz"
      sha256 "b7c0d178a94fab47ef96d86663853c9e23d6515e5894554a5ced032e20733606"
    end
    on_intel do
      url "https://github.com/rgregg/agent-secret-broker/releases/download/v0.4.0/asb-linux-amd64.tar.gz"
      sha256 "93696b946fc1a41ff624283676a0a5df856d5528dc6aa83f7a1d79e46b6c5d26"
    end
  end

  def install
    bin.install "asb"
  end

  test do
    assert_match "ask the broker for a secret", shell_output("#{bin}/asb help 2>&1")
  end
end
