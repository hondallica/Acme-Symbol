package Acme::Symbol;
use strict;
use warnings;
use utf8;
use feature qw/say/;
use Encode;
use Encode::Guess qw/utf8 cp932 euc-jp iso-2022-jp/;
use Term::Encoding;


our $VERSION = '0.01';

sub bits {
    my ($self, $string) = @_;
    my $bits = '';
    my @chars = split //, decode 'Guess', $string || 'sex';
    $bits .= unpack('B*', encode('utf8', $_)) for @chars;
    return $bits;
}

sub symbol {
    my ($self, $string) = @_;
    my %symbol = (0 => '♀', 1 => '♂');
    my $symbol_string = '';
    $symbol_string .= $symbol{$_} for split //, $self->bits($string);
    my $term = find_encoding(Term::Encoding::get_encoding);
    return $term->encode($symbol_string);
}

1;
__END__

=head1 NAME

Acme::Symbol -

=head1 SYNOPSIS

  use Acme::Symbol;

=head1 DESCRIPTION

Acme::Symbol

=head1 AUTHOR

hondallica E<lt>admin@sukuna.netE<gt>

=head1 SEE ALSO

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
