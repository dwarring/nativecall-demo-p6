use v6;

unit module NativeCall::Demo;

use LibraryMake;
use NativeCall;

constant TEST-LIB = %?RESOURCES{"libraries/libtest"});
sub ptr_to_strs(Pointer[CArray[Str]] $strs is rw) is native(TEST-LIB) is export { * }
