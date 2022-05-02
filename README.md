# nativecall-demo-p6
General NativeCall hacking

To run script:
```
% zef --deps-only install . # install LibraryMake
% raku Build.pm
% raku -I . bin/native-call-demo.p6
```
To run tests:
```
% zef --deps-only install . # install LibraryMake
% zef install App::Prove6
% raku Build.pm
% prove6 -I. t              # run tests t/*.t
```
