package Criteria::Male;

use Moo;
with 'Criteria';

sub meetCriteria {
    my ($self, $persons) = @_;

    my $malePersons = {};
    foreach my $person (@$persons) {
        if (uc($person->gender) eq 'M') {
            $malePersons->{$person->name} = $person;
        }
    }

    return $malePersons;
};

1;
