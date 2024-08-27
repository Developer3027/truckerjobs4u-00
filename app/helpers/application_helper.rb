module ApplicationHelper
  include Pagy::Frontend
  # Returns the symbol `:landing`, which represents the name of the resource being used in the application.
  #
  # @return [Symbol] `:landing`
  def resource_name(resource = :landing)
    resource
  end

  # Returns the class of the resource being used in the application.
  #
  # @return [Class] The class of the resource.@pagy, @landings = pagy(Landing.order(updated_at: :desc), items: 10)
  def resource_class(resource = :landing)
    resource.to_s.classify.constantize
  end

  # Returns the current resource object, initializing it as a new Landing instance if it doesn't exist.
  def resource(resource)
    @resource ||= resource_class.new
  end

  # Returns the Devise mapping for the landing resource.
  #
  # @return [Devise::Mapping] The Devise mapping for the landing resource.
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:landing]
  end
end
