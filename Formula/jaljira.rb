class Jaljira < Formula
  desc "Local-first Bunli CLI for tracking Jira ticket work and deriving Tempo/Keka allocations."
  homepage "https://github.com/bloodred17/jaljira"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/bloodred17/jaljira/releases/download/v0.1.0/jaljira-0.1.0-darwin-arm64.tar.gz"
      sha256 "ce06572ba1d06625c591b7202cc9d22ad366aa8078551c1fe1fe19e339151414"
    else
      url "https://github.com/bloodred17/jaljira/releases/download/v0.1.0/jaljira-0.1.0-darwin-x64.tar.gz"
      sha256 "059229b8ec58c8175e0a82d6eb3cd17519f4caf1a7e7b6c82f19aef6c3b62d50"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/bloodred17/jaljira/releases/download/v0.1.0/jaljira-0.1.0-linux-arm64.tar.gz"
      sha256 "4a7c4c066ff183cee3559d6be9267a98ade6a0df043378100435a7b2ab9c1c60"
    else
      url "https://github.com/bloodred17/jaljira/releases/download/v0.1.0/jaljira-0.1.0-linux-x64.tar.gz"
      sha256 "2f38b826d13659103c226d77b56287eea8d8aa52b029421351d0aa872c6f33eb"
    end
  end

  def install
    bin.install "jaljira"
  end

  test do
    system "#{bin}/jaljira", "--help"
  end
end
