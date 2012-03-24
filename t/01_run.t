use strict;
use Acme::Symbol;
use Test::More tests => 4;

ok(Acme::Symbol->bits('a') eq '01100001');
ok(Acme::Symbol->bits('ab') eq '0110000101100010');
ok(Acme::Symbol->symbol('ab') eq '♀♂♂♀♀♀♀♂♀♂♂♀♀♀♂♀');
ok(Acme::Symbol->symbol('あくめ') eq '♂♂♂♀♀♀♂♂♂♀♀♀♀♀♀♂♂♀♀♀♀♀♂♀♂♂♂♀♀♀♂♂♂♀♀♀♀♀♀♂♂♀♀♀♂♂♂♂♂♂♂♀♀♀♂♂♂♀♀♀♀♀♂♀♂♀♀♀♀♀♀♂');
