class Cli < Formula
  desc "Command-line interface for the InsurUp insurance platform"
  homepage "https://github.com/InsurUp/cli"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/InsurUp/cli/releases/download/v0.1.2/insurup-darwin-arm64"
      sha256 "2dd285076480855bf81cf9c673418b14ec18fda8b63a04337ac0ffd9cea1ad91"
    end
    on_intel do
      url "https://github.com/InsurUp/cli/releases/download/v0.1.2/insurup-darwin-x64"
      sha256 "a656e9b2234d6a66f037b6628a6b1d04f69250b2bb49a0d2b05d37311d55bc66"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/InsurUp/cli/releases/download/v0.1.2/insurup-linux-arm64"
      sha256 "df7d72abd438e40bcf324c494920b55e9a69255c12640001537b01c75edd43e0"
    end
    on_intel do
      url "https://github.com/InsurUp/cli/releases/download/v0.1.2/insurup-linux-x64"
      sha256 "da407fb5b5f9242be244f1847da7f5b7ca281b42742f0ddfc9ac11dfd1df19a7"
    end
  end

  def install
    bin.install Dir["insurup-*"].first => "insurup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/insurup --version")
  end
end
