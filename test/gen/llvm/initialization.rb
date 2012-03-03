# Generated by ffi_gen. Please do not change this file by hand.

require 'ffi'

module LLVM::C
  extend FFI::Library
  ffi_lib 'LLVM-3.0'

  # (Not documented)
  # 
  # @method initialize_core(r)
  # @param [FFI::Pointer(PassRegistryRef)] r 
  # @return [nil] 
  # @scope class
  attach_function :initialize_core, :LLVMInitializeCore, [:pointer], :void

  # (Not documented)
  # 
  # @method initialize_transform_utils(r)
  # @param [FFI::Pointer(PassRegistryRef)] r 
  # @return [nil] 
  # @scope class
  attach_function :initialize_transform_utils, :LLVMInitializeTransformUtils, [:pointer], :void

  # (Not documented)
  # 
  # @method initialize_scalar_opts(r)
  # @param [FFI::Pointer(PassRegistryRef)] r 
  # @return [nil] 
  # @scope class
  attach_function :initialize_scalar_opts, :LLVMInitializeScalarOpts, [:pointer], :void

  # (Not documented)
  # 
  # @method initialize_inst_combine(r)
  # @param [FFI::Pointer(PassRegistryRef)] r 
  # @return [nil] 
  # @scope class
  attach_function :initialize_inst_combine, :LLVMInitializeInstCombine, [:pointer], :void

  # (Not documented)
  # 
  # @method initialize_ipo(r)
  # @param [FFI::Pointer(PassRegistryRef)] r 
  # @return [nil] 
  # @scope class
  attach_function :initialize_ipo, :LLVMInitializeIPO, [:pointer], :void

  # (Not documented)
  # 
  # @method initialize_instrumentation(r)
  # @param [FFI::Pointer(PassRegistryRef)] r 
  # @return [nil] 
  # @scope class
  attach_function :initialize_instrumentation, :LLVMInitializeInstrumentation, [:pointer], :void

  # (Not documented)
  # 
  # @method initialize_analysis(r)
  # @param [FFI::Pointer(PassRegistryRef)] r 
  # @return [nil] 
  # @scope class
  attach_function :initialize_analysis, :LLVMInitializeAnalysis, [:pointer], :void

  # (Not documented)
  # 
  # @method initialize_ipa(r)
  # @param [FFI::Pointer(PassRegistryRef)] r 
  # @return [nil] 
  # @scope class
  attach_function :initialize_ipa, :LLVMInitializeIPA, [:pointer], :void

  # (Not documented)
  # 
  # @method initialize_code_gen(r)
  # @param [FFI::Pointer(PassRegistryRef)] r 
  # @return [nil] 
  # @scope class
  attach_function :initialize_code_gen, :LLVMInitializeCodeGen, [:pointer], :void

  # (Not documented)
  # 
  # @method initialize_target(r)
  # @param [FFI::Pointer(PassRegistryRef)] r 
  # @return [nil] 
  # @scope class
  attach_function :initialize_target, :LLVMInitializeTarget, [:pointer], :void

end