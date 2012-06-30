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
  class CefRequestT < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class CefCallbackT < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class CefResponseT < FFI::Struct
    layout :dummy, :char
  end
  
  # (Not documented)
  class CefCallbackT < FFI::Struct
    layout :dummy, :char
  end
  
  # Structure used to implement a custom request handler structure. The functions
  # of this structure will always be called on the IO thread.
  # 
  # = Fields:
  # :base ::
  #   (unknown) Base structure.
  # :process_request ::
  #   (FFI::Pointer(*)) Begin processing the request. To handle the request return true (1) and
  #   call cef_callback_t::cont() once the response header information is
  #   available (cef_callback_t::cont() can also be called from inside this
  #   function if header information is available immediately). To cancel the
  #   request return false (0).
  # :get_response_headers ::
  #   (FFI::Pointer(*)) Retrieve response header information. If the response length is not known
  #   set |response_length| to -1 and read_response() will be called until it
  #   returns false (0). If the response length is known set |response_length| to
  #   a positive value and read_response() will be called until it returns false
  #   (0) or the specified number of bytes have been read. Use the |response|
  #   object to set the mime type, http status code and other optional header
  #   values. To redirect the request to a new URL set |redirectUrl| to the new
  #   URL.
  # :read_response ::
  #   (FFI::Pointer(*)) Read response data. If data is available immediately copy up to
  #   |bytes_to_read| bytes into |data_out|, set |bytes_read| to the number of
  #   bytes copied, and return true (1). To read the data at a later time set
  #   |bytes_read| to 0, return true (1) and call cef_callback_t::cont() when the
  #   data is available. To indicate response completion return false (0).
  # :can_get_cookie ::
  #   (FFI::Pointer(*)) Return true (1) if the specified cookie can be sent with the request or
  #   false (0) otherwise. If false (0) is returned for any cookie then no
  #   cookies will be sent with the request.
  # :can_set_cookie ::
  #   (FFI::Pointer(*)) Return true (1) if the specified cookie returned with the response can be
  #   set or false (0) otherwise.
  # :cancel ::
  #   (FFI::Pointer(*)) Request processing has been canceled.
  class CefResourceHandlerT < FFI::Struct
    layout :base, :char,
           :process_request, :pointer,
           :get_response_headers, :pointer,
           :read_response, :pointer,
           :can_get_cookie, :pointer,
           :can_set_cookie, :pointer,
           :cancel, :pointer
  end
  
end