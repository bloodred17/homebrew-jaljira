class Jaljira < Formula
  desc "Local-first Bunli CLI for tracking Jira ticket work and deriving Tempo/Keka allocations."
  homepage "https://github.com/bloodred17/jaljira"
  version "0.3.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bloodred17/jaljira/releases/download/v0.3.0/jaljira-0.3.0-darwin-arm64.tar.gz"
      sha256 "17055d4473c2dcc534dfa7683e177d991d1460410b0a2aa5bc25d63f0ed7b236"
    else
      url "https://github.com/bloodred17/jaljira/releases/download/v0.3.0/jaljira-0.3.0-darwin-x64.tar.gz"
      sha256 "f60e1b87154b14a72e196c631a68d9cbba4d4113fe086aef8a7b9d98262c4644"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bloodred17/jaljira/releases/download/v0.3.0/jaljira-0.3.0-linux-arm64.tar.gz"
      sha256 "a813ad80c3ebbc66a73f9995f2a05b2283796b62167690a32ab09635ceca9e5e"
    else
      url "https://github.com/bloodred17/jaljira/releases/download/v0.3.0/jaljira-0.3.0-linux-x64.tar.gz"
      sha256 "e6095a3c6b2a30cdf5e1ef105cf5508be85bd352655d07753efcca24a800c5b2"
    end
  end

  def install
    bin.install "jaljira"
  end

  test do
    system "#{bin}/jaljira", "--help"
  end
end
