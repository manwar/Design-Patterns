package Criteria::Female;

use Moo;
with 'Criteria';

sub meetCriteria {
    my ($self, $persons) = @_;

    my $femalePersons = {};
    foreach my $person (@$persons) {
        if (uc($person->gender) eq 'F') {
            $femalePersons->{$person->name} = $person;
        }
    }

    return $femalePersons;
};

1;
