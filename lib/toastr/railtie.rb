  class Railtie < Rails::Railtie
    initializer 'toastr-rails.initialize_toastr_messages' do |app|
      ActiveSupport.on_load(:action_view) do
        include ToastrMessages
      end
    end
  end
