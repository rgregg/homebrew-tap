class Asb < Formula
  desc "Command line for the agent secret broker: use credentials without ever seeing them"
  homepage "https://github.com/rgregg/agent-secret-broker"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/rgregg/agent-secret-broker/releases/download/v0.3.0/asb-macos-arm64.tar.gz"
      sha256 "97e4a96e721baaff6da83348983daf9df27cbf07d86c781928d9f200d247dfdf"
    end
    on_intel do
      url "https://github.com/rgregg/agent-secret-broker/releases/download/v0.3.0/asb-macos-amd64.tar.gz"
      sha256 "b37241100138e43bfed86d58479583bb525787bbdd8d0bc57ba43003071c71f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/rgregg/agent-secret-broker/releases/download/v0.3.0/asb-linux-arm64.tar.gz"
      sha256 "53e73f79eb525afe2a4e5102399fbba5e16c35bb85cbbf9d8bef14359786570d"
    end
    on_intel do
      url "https://github.com/rgregg/agent-secret-broker/releases/download/v0.3.0/asb-linux-amd64.tar.gz"
      sha256 "bbffd0acb1ed8b0392a739f2c0ca19fad66346f91fb382df38c7ba7c501b5c85"
    end
  end

  def install
    bin.install "asb"
  end

  test do
    assert_match "ask the broker for a secret", shell_output("#{bin}/asb help 2>&1")
  end
end
