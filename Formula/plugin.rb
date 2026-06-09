class Plugin < Formula
  desc "TypeScript authoring SDK for InsurUp plugins"
  homepage "https://github.com/InsurUp/plugin"
  url "https://registry.npmjs.org/@insurup/plugin/-/plugin-0.1.2.tgz"
  sha256 "d6e368f6ce3e82cade1189a8026cd486d0854578d5f703a14b5ee0081ba625e0"
  license "MIT"

  def install
    root = (buildpath/"package/package.json").exist? ? buildpath/"package" : buildpath
    pkgshare.install root.children
  end

  test do
    assert_match version.to_s, (pkgshare/"package.json").read
    assert_predicate pkgshare/"src/index.ts", :exist?
  end
end
