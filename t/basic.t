use v6;
use NativeCall;
use NativeCall::Demo;
use Test;
plan 4;

my Pointer[CArray[Str]] $a .= new;
ptr_to_strs($a);
is-deeply $a.deref[0], 'howdy';
is-deeply $a.deref[1], 'doody';
is-deeply $a.deref[2], Str;

sub mult($v) {
    $v * $v;
}

is do_callback( -> $v { $v * $v}, 7 ), 49;
