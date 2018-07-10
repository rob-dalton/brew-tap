class Awspot < Formula
  include Language::Python::Virtualenv

  desc "A command line tool for managing AWS Spot Resources."
  homepage "https://github.com/rob-dalton/awspot"
  url "https://github.com/rob-dalton/awspot/raw/master/awspot-0.1.tar.gz"
  sha256 "1c259404a58a58e10fa9c006f89ff973726d42375e3cb710adc9c1505a61c99b"
  version "0.1" 

  def install
    system "make", "script", "--prefix=#{prefix}"
    bin.install "awspot"
  end

end 
