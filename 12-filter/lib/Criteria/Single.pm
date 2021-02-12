package Criteria::Single;

use Moo;
with 'Criteria';

sub meetCriteria {
    my ($self, $persons) = @_;

    my $singlePersons = {};
    foreach my $person (@$persons) {
        if (uc($person->status) eq 'S') {
            $singlePersons->{$person->name} = $person;
        }
    }

    return $singlePersons;
};

1;
