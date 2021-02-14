package IteratorPattern;

$IteratorPattern::VERSION = '0.01';

=head1 NAME

IteratorPattern - Demo Iterator design pattern.

=head1 SYNOPSIS

    use Container::NameRepository;

    my $repository = Container::NameRepository->new({
        names => [ qw(A B C D E) ]
    });

    my $iterator = $repository->interator;
    while ($iterator->has_next) {
        print "Name: ", $iterator->next, "\n";
    }

=cut

1;
