package Criteria::And;

use Moo;
with 'Criteria';

has 'criteria'      => (is => 'rw');
has 'otherCriteria' => (is => 'rw');

sub meetCriteria {
    my ($self, $persons) = @_;

    my $firstCriteria = $self->criteria->meetCriteria($persons);
    return $self->otherCriteria->meetCriteria([ map { $firstCriteria->{$_} } keys %$firstCriteria ]);
};

1;
