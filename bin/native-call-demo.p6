use v6;
use NativeCall;
use NativeCall::Demo;

my Pointer[CArray[Str]] $a .= new;
ptr_to_strs($a);
say $a.deref[0]; # howdy
say $a.deref[1]; # doody
say $a.deref[2]; # (Str)
