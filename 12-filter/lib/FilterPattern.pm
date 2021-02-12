package FilterPattern;

$FilterPattern::VERSION = '0.01';

=head1 NAME

FilterPattern - Demo Filter design pattern.

=head1 SYNOPSIS

    use Person;
    use Criteria::Male;
    use Criteria::Female;
    use Criteria::Single;
    use Criteria::And;
    use Criteria::Or;

    my $persons = [];
    push @$persons, Person->new({ name => "A", gender => "m", status => "s" });
    push @$persons, Person->new({ name => "B", gender => "m", status => "m" });
    push @$persons, Person->new({ name => "C", gender => "f", status => "m" });
    push @$persons, Person->new({ name => "D", gender => "f", status => "s" });
    push @$persons, Person->new({ name => "E", gender => "m", status => "s" });
    push @$persons, Person->new({ name => "F", gender => "m", status => "s" });

    my $male           = Criteria::Male->new;
    my $female         = Criteria::Female->new;
    my $single         = Criteria::Single->new;
    my $singleMale     = Criteria::And->new({ criteria => $single, otherCriteria => $male   });
    my $singleOrFemale = Criteria::Or->new({  criteria => $single, otherCriteria => $female });

    print "Males:\n";
    print join(", ", sort keys %{$male->meetCriteria($persons)}); # A, B, E, F

    print "Females:\n";
    print join(", ", sort keys %{$female->meetCriteria($persons)}); # C, D

    print "Single Males:\n";
    print join(", ", sort keys %{$singleMale->meetCriteria($persons)}); # A, E, F

    print "Single or Females:\n";
    print join(", ", sort keys %{$singleOrFemale->meetCriteria($persons)}); # A, C, D, E, F

=cut

1;
