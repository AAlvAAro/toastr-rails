module Toastr
  module ToastrHelpers
    def toastr_flash_messages
      flash_messages = []
      flash.each do |type, message|
        toastr_type = 'success' if type == 'notice'
        toastr_type = 'error' if type == 'alert'

        text = "<script>toastr.#{toastr_type}('#{message};</script>'"
        flash_messages << text.html_safe if message
      end
      flash_messages.join("\n").html_safe
    end
  end
end