class Awspot < Formula
  include Language::Python::Virtualenv

  desc "A command line tool for managing AWS Spot Resources."
  homepage "https://github.com/rob-dalton/awspot"
  url "https://github.com/rob-dalton/awspot/raw/master/awspot-0.1.tar.gz"
  sha256 "8fa60d0c46bb4b96b7e5f9d241f85caecdf00f2a04ec90f832f172b101f87624"
  version "0.1" 

  def install
    system("python", "generate_script.py", "--prefix=#{prefix}")
    bin.install "awspot"
  end

end 
