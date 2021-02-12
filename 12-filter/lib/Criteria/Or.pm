package Criteria::Or;

use Moo;
with 'Criteria';

has 'criteria'      => (is => 'rw');
has 'otherCriteria' => (is => 'rw');

sub meetCriteria {
    my ($self, $persons) = @_;

    my $firstCriteria = $self->criteria->meetCriteria($persons);
    my $otherCriteria = $self->otherCriteria->meetCriteria($persons);

    foreach my $personName (keys %$otherCriteria) {
        if (!exists $firstCriteria->{$personName}) {
            $firstCriteria->{$personName} = $otherCriteria->{$personName};
        }
    }

    return $firstCriteria;
};

1;
