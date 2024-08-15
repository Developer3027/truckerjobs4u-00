module ApplicationHelper
  # Returns the symbol `:landing`, which represents the name of the resource being used in the application.
  #
  # @return [Symbol] `:landing`
  def resource_name
    :landing
  end

  # Returns the class of the resource being used in the application.
  #
  # @return [Class] The class of the resource.
  def resource_class
      Landing
  end

  # Returns the current resource object, initializing it as a new Landing instance if it doesn't exist.
  def resource
    @resource ||= Landing.new
  end

  # Returns the Devise mapping for the landing resource.
  #
  # @return [Devise::Mapping] The Devise mapping for the landing resource.
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:landing]
  end
end
