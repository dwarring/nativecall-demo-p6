use v6;

unit module NativeCall::Demo;

use LibraryMake;
use NativeCall;

sub testlib {
    state $ = do {
	my $so = get-vars('')<SO>;
	~(%?RESOURCES{"lib/libtest$so"});
    }
}

sub ptr_to_strs(Pointer[CArray[Str]] $strs is rw) is native(&testlib) is export { * }
