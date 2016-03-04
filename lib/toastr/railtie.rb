require 'toastr/toastr_helpers'

module Toastr
  class Railtie < Rails::Railtie
    initializer 'toastr/view_helpers' do
      ActionView::Base.send :include, ToastrHelpers
    end
  end
end