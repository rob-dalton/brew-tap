class Hworld < Formula
  desc "Simple hello world script."
  homepage "https://github.com/rob-dalton/hworld"
  url "https://github.com/rob-dalton/hworld/raw/master/hworld-0.1.tar.gz"
  sha256 "d7923f3e6e41479b2f8a579c0d418eb29f24991b3636819114edfd6d954b778f"
  version "0.1"

  def install
    # install hworld script, create symlink to script in /usr/local/bin
    bin.install "hworld"
  end

  test do
    # test script output
    assert_equal %x('#{bin}/hworld'), "Hello world!\n"
  end
end
