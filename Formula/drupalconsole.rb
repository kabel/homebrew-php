require File.expand_path("../../Abstract/abstract-php-phar", __FILE__)

class Drupalconsole < AbstractPhpPhar
  init
  desc "CLI tool for Drupal 8"
  homepage "https://drupalconsole.com/"
  url "https://github.com/hechoendrupal/drupal-console-launcher/releases/download/1.0.0-rc13/drupal.phar"
  sha256 "ddf33bea5f02c51b568e565aefb12d0e7366c229fa128af03989dc8b93d33eba"

  bottle do
    cellar :any_skip_relocation
    rebuild 1
    sha256 "07f2ad3e1cdedc838cf9a2c49d6ec82ab048f1e670842b07320cac963e860818" => :sierra
    sha256 "047e39132cf1ef1ed753908d4e3ba8c3671b4eab0e5faa7db5b8c1ffd6ac2ece" => :el_capitan
    sha256 "047e39132cf1ef1ed753908d4e3ba8c3671b4eab0e5faa7db5b8c1ffd6ac2ece" => :yosemite
  end

  def install
    bin.install "drupal.phar" => "drupal"
  end

  test do
    system "#{bin}/drupal", "--version"
  end
end
