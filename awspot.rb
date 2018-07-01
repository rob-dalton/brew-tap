class Awspot < Formula
  include Language::Python::Virtualenv

  desc "A command line tool for managing AWS Spot Resources."
  homepage "https://github.com/rob-dalton/awspot"
  url "https://github.com/rob-dalton/awspot/raw/master/awspot-0.1.tar.gz"
  sha256 "40722513df010eb9aa0d8f0dffe8152792a1cb56ad8437aceb6953d167e9d90e"
  version "0.1" 

  resource "boto3" do
    url "https://files.pythonhosted.org/packages/75/43/700260807978c5abfe4d687b6c0cca2b085a7542eb438aeacb2f73bb10e7/boto3-1.7.48.tar.gz"
    sha256 "c5a52cb93f7ae28e960810cb69d1fc8a9d00c1f122a681d7454a4d70e42dd5de"
  end

  resource "botocore" do
    url "https://files.pythonhosted.org/packages/b9/c3/ec611f82950ebb58b8bbf891d1e43d5662ae67af6d9ba6a256f3e3f590b4/botocore-1.10.48.tar.gz"
    sha256 "1218517172be766acb9f5de7f4044f9f0f9d9589614e7e6fe6562072586e6290"
  end

  resource "docutils" do
    url "https://files.pythonhosted.org/packages/84/f4/5771e41fdf52aabebbadecc9381d11dea0fa34e4759b4071244fa094804c/docutils-0.14.tar.gz"
    sha256 "51e64ef2ebfb29cae1faa133b3710143496eca21c530f3f71424d77687764274"
  end

  resource "jmespath" do
    url "https://files.pythonhosted.org/packages/e5/21/795b7549397735e911b032f255cff5fb0de58f96da794274660bca4f58ef/jmespath-0.9.3.tar.gz"
    sha256 "6a81d4c9aa62caf061cb517b4d9ad1dd300374cd4706997aff9cd6aedd61fc64"
  end

  resource "python-dateutil" do
    url "https://files.pythonhosted.org/packages/a0/b0/a4e3241d2dee665fea11baec21389aec6886655cd4db7647ddf96c3fad15/python-dateutil-2.7.3.tar.gz"
    sha256 "e27001de32f627c22380a688bcc43ce83504a7bc5da472209b4c70f02829f0b8"
  end

  resource "s3transfer" do
    url "https://files.pythonhosted.org/packages/9a/66/c6a5ae4dbbaf253bd662921b805e4972451a6d214d0dc9fb3300cb642320/s3transfer-0.1.13.tar.gz"
    sha256 "90dc18e028989c609146e241ea153250be451e05ecc0c2832565231dacdf59c1"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/16/d8/bc6316cf98419719bd59c91742194c111b6f2e85abac88e496adefaf7afe/six-1.11.0.tar.gz"
    sha256 "70e8a77beed4562e7f14fe23a786b54f6296e34344c23bc42f07b15018ff98e9"
  end

  def install
    virtualenv_install_with_resources
    system "python", "install.py"
    bin.install "awspot"
  end

end 
