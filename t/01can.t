use Test::More tests=>3;

BEGIN {
  use_ok qw(Tie::Formatted);
}

ok exists $main::{format}, "hash was properly exported";
can_ok 'Tie::Formatted', qw(TIEHASH FETCH);
