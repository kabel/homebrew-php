class PhpMetaRequirement < Requirement
  fatal true
  satisfy { which("php") }

  def message
    "PHP is required to install this formula."
  end
end
