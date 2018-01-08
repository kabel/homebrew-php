class PharBuildingRequirement < Requirement
  fatal true
  satisfy do
    next false unless which("php")
    `php -i| grep phar.readonly`.downcase.include? "off"
  end

  def message
    "The PHP setting 'phar.readonly' is required to be 'Off' for this formula"
  end
end
