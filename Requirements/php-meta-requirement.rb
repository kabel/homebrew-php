class PhpMetaRequirement < Requirement
  default_formula "php72"
  fatal true
  satisfy { which("php") }

  def message
    "PHP is required to install this formula."
  end
end
