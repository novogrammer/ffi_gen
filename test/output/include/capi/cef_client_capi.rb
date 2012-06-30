# Generated by ffi-gen. Please do not change this file by hand.

require 'ffi'

module CEF
  extend FFI::Library
  ffi_lib 'cef'
  
  def self.attach_function(name, *_)
    begin; super; rescue FFI::NotFoundError => e
      (class << self; self; end).class_eval { define_method(name) { |*_| raise e } }
    end
  end
  
  # (Not documented)
  class CefContextMenuHandlerT < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class CefDisplayHandlerT < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class CefFocusHandlerT < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class CefGeolocationHandlerT < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class CefJsdialogHandlerT < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class CefKeyboardHandlerT < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class CefLifeSpanHandlerT < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class CefLoadHandlerT < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class CefRequestHandlerT < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class CefBrowserT < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class CefProcessMessageT < FFI::Struct
    layout :dummy, :char
  end
  
  # Implement this structure to provide handler implementations.
  # 
  # = Fields:
  # :base ::
  #   (unknown) Base structure.
  # :get_context_menu_handler ::
  #   (FFI::Pointer(*)) Return the handler for context menus. If no handler is provided the default
  #   implementation will be used.
  # :get_display_handler ::
  #   (FFI::Pointer(*)) Return the handler for browser display state events.
  # :get_focus_handler ::
  #   (FFI::Pointer(*)) Return the handler for focus events.
  # :get_geolocation_handler ::
  #   (FFI::Pointer(*)) Return the handler for geolocation permissions requests. If no handler is
  #   provided geolocation access will be denied by default.
  # :get_jsdialog_handler ::
  #   (FFI::Pointer(*)) Return the handler for JavaScript dialogs. If no handler is provided the
  #   default implementation will be used.
  # :get_keyboard_handler ::
  #   (FFI::Pointer(*)) Return the handler for keyboard events.
  # :get_life_span_handler ::
  #   (FFI::Pointer(*)) Return the handler for browser life span events.
  # :get_load_handler ::
  #   (FFI::Pointer(*)) Return the handler for browser load status events.
  # :get_request_handler ::
  #   (FFI::Pointer(*)) Return the handler for browser request events.
  # :on_process_message_received ::
  #   (FFI::Pointer(*)) Called when a new message is received from a different process. Return true
  #   (1) if the message was handled or false (0) otherwise. Do not keep a
  #   reference to or attempt to access the message outside of this callback.
  class CefClientT < FFI::Struct
    layout :base, :char,
           :get_context_menu_handler, :pointer,
           :get_display_handler, :pointer,
           :get_focus_handler, :pointer,
           :get_geolocation_handler, :pointer,
           :get_jsdialog_handler, :pointer,
           :get_keyboard_handler, :pointer,
           :get_life_span_handler, :pointer,
           :get_load_handler, :pointer,
           :get_request_handler, :pointer,
           :on_process_message_received, :pointer
  end
  
end