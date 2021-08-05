class SubdomainConstraint
  def self.matches?(request)
    subdomains = Apartment::Elevators::Subdomain.excluded_subdomains
    request.subdomain.present? && !subdomains.include?(request.subdomain)
  end
end

Rails.application.routes.draw do
  constraints SubdomainConstraint do
    resources :projects
  end

  resources :users
end
