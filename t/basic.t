use v6;
use NativeCall;
use NativeCall::Demo;
use Test;
plan 5;

my Pointer[CArray[Str]] $a .= new;
ptr_to_strs($a);
is-deeply $a.deref[0], 'howdy';
is-deeply $a.deref[1], 'doody';
is-deeply $a.deref[2], Str;

sub mult($v) {
    $v * $v;
}

is do_callback( -> $v { $v * $v}, 7 ), 49;

my $all-passing = True;
for 1..100 {
    my @ok = (1..10).race(:batch(1)).map: -> $n {
        my $*N = $n;
        do_callback( -> $v { $*N == $v}, $n );
    }
    $all-passing = False
        unless @ok.all.so;
}
ok $all-passing;
