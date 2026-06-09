class Plugin < Formula
  desc "TypeScript authoring SDK for InsurUp plugins"
  homepage "https://github.com/InsurUp/plugin"
  url "https://registry.npmjs.org/@insurup/plugin/-/plugin-0.1.1.tgz"
  sha256 "85a3e4e9ee11939131a7ffacf924037eeddefa48c6c354c3bd64bb98625ab623"
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
