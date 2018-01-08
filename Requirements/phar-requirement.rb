class PharRequirement < Requirement
  fatal true
  satisfy do
    next false unless which("php")
    `php -m`.downcase.include? "phar"
  end

  def message
    "PHP Phar support is required for this formula"
  end
end
