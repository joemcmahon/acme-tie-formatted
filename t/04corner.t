use Test::More tests=>3;

BEGIN {
  use_ok qw(Tie::Formatted);
}

my $expected;
my $result;

$result = $format{""};
is $result, "", "nothing to format";

$result = $format{"",''};
is $result, "", "nothing to format";
