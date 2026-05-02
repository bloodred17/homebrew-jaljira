class Jaljira < Formula
  desc "Local-first Bunli CLI for tracking Jira ticket work and deriving Tempo/Keka allocations."
  homepage "https://github.com/bloodred17/jaljira"
  version "0.3.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bloodred17/jaljira/releases/download/v0.3.1/jaljira-0.3.1-darwin-arm64.tar.gz"
      sha256 "0e9560e784b1531c977381b2e73c77628de9e7373a063f22a580c26e029e69a4"
    else
      url "https://github.com/bloodred17/jaljira/releases/download/v0.3.1/jaljira-0.3.1-darwin-x64.tar.gz"
      sha256 "434dd216883d2321564bd2986a1e527fe5d602c5cf689ceb3ad9536136739d3d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bloodred17/jaljira/releases/download/v0.3.1/jaljira-0.3.1-linux-arm64.tar.gz"
      sha256 "4c7a2314665d2bf3c493b10fcc19493b97807709b98f5b71edcd38187cb50966"
    else
      url "https://github.com/bloodred17/jaljira/releases/download/v0.3.1/jaljira-0.3.1-linux-x64.tar.gz"
      sha256 "5d97805e2bb5c98df079428b09b792d53c3b0f10488ff3f4b6c406a7fac67227"
    end
  end

  def install
    bin.install "jaljira"
  end

  test do
    system "#{bin}/jaljira", "--help"
  end
end
