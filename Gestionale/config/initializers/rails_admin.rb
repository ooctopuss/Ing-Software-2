RailsAdmin.config do |config|
  require Rails.root.join('lib', 'rails_admin', 'rails_admin_pdf.rb')
  RailsAdmin::Config::Actions.register(RailsAdmin::Config::Actions::Pdf)
  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
   warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)
  config.navigation_static_links = {
   'Ooctopuss' => 'http://www.github.com/ooctopuss'
  }
  config.navigation_static_label = "My Links"

  RailsAdmin.config do |config|
    config.main_app_name = ["OOCTOPUSS", "Billing system"]
  end

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    pdf do
      only ['Invoice']

end

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
  RailsAdmin.config do |config|
    config.total_columns_width = 2000
  end

  config.model Invoice do
    configure :total_amount do
      read_only true
    end
  end


  config.model Client do
    configure :iva do
      read_only true
    end
  end




end
