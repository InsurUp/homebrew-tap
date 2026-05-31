class Cli < Formula
  desc "Command-line interface for the InsurUp insurance platform"
  homepage "https://github.com/InsurUp/cli"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/InsurUp/cli/releases/download/v0.1.1/insurup-darwin-arm64"
      sha256 "e5cf5c920be342818e1eecae3a0b1327be3e7bb6414641e5a6f0623c5b07ec2f"
    end
    on_intel do
      url "https://github.com/InsurUp/cli/releases/download/v0.1.1/insurup-darwin-x64"
      sha256 "280b549b1a0e6f63fc3dcfefc5c2834bb0709523273ee0b14e38da6776e0b557"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/InsurUp/cli/releases/download/v0.1.1/insurup-linux-arm64"
      sha256 "92efbc8158311bd93f92f90f2eaff96a9ef5569199d3f5e03c9d166c43071cc9"
    end
    on_intel do
      url "https://github.com/InsurUp/cli/releases/download/v0.1.1/insurup-linux-x64"
      sha256 "0e5e0003990da33f68f780ab0daaa5dd28bcdebe3e14f687e8c3be1e4ab248cc"
    end
  end

  def install
    bin.install Dir["insurup-*"].first => "insurup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/insurup --version")
  end
end
