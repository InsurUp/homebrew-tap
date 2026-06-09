class Cli < Formula
  desc "Command-line interface for the InsurUp insurance platform"
  homepage "https://github.com/InsurUp/cli"
  version "0.1.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/InsurUp/cli/releases/download/v0.1.4/insurup-darwin-arm64"
      sha256 "1c3dc2a1f94f782db84998d004fb951bb85ed6ce3118ac1afe47e46bfa6f7a47"
    end
    on_intel do
      url "https://github.com/InsurUp/cli/releases/download/v0.1.4/insurup-darwin-x64"
      sha256 "b6ac66c24932a457e95797bc59a197b311c65d84a0ccff460eec23e60c1810b0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/InsurUp/cli/releases/download/v0.1.4/insurup-linux-arm64"
      sha256 "b59769ab41d52261c52abfdb562ae728cbeaacef52b4f2f135a63f9df0262c63"
    end
    on_intel do
      url "https://github.com/InsurUp/cli/releases/download/v0.1.4/insurup-linux-x64"
      sha256 "0298a8a4bd4e2ef4d0459c85f51a8af5a4a277e0d0519415f2830655120146ad"
    end
  end

  def install
    bin.install Dir["insurup-*"].first => "insurup"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/insurup --version")
  end
end
