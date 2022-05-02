unit module NativeCall::Demo;

use LibraryMake;
use NativeCall;

constant TEST-LIB = %?RESOURCES{"libraries/test"};
sub ptr_to_strs(Pointer[CArray[Str]] $strs is rw) is native(TEST-LIB) is export { * }
sub do_callback(&cb (int32 --> int32), int32 --> int32) is native(TEST-LIB) is export { * }
