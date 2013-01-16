require 'ffi'

module IDN
  extend FFI::Library
  ffi_lib 'idn.so.11' #FFI::Library::IDN

  attach_function      :stringprep_profile, [ :string, :pointer, :string, :int ], :int
  private_class_method :stringprep_profile

  def self.nameprep(string)
    out = FFI::MemoryPointer.new :pointer
    stringprep_profile string, out, "Nameprep", 0
    out.read_pointer.read_string
  end
end
