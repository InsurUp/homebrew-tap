class Cli < Formula
  desc "Command-line interface for the InsurUp insurance platform"
  homepage "https://github.com/InsurUp/cli"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/InsurUp/cli/releases/download/v0.2.0/insurup-darwin-arm64"
      sha256 "3086acb109c321c09047b581f31d7bd4c8e3c90012b7becf7fc96f8c2db5803b"
    end
    on_intel do
      url "https://github.com/InsurUp/cli/releases/download/v0.2.0/insurup-darwin-x64"
      sha256 "0e745a5779ac593c58ae87aaa8168f7ae5ca0582146f10bb0a1edd89b86b58bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/InsurUp/cli/releases/download/v0.2.0/insurup-linux-arm64"
      sha256 "1a1a7cfbebd36ab2c4946de193c3d6b9a1bfb3bf444551f1a5d688099a2a3b9c"
    end
    on_intel do
      url "https://github.com/InsurUp/cli/releases/download/v0.2.0/insurup-linux-x64"
      sha256 "5ec490f8bcc2d3c1add7684cd9478b22a697a44fc2d7665d71a75d62179172df"
    end
  end

  def install
    bin.install Dir["insurup-*"].first => "insurup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/insurup --version")
  end
end
