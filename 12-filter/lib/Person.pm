package Person;

use Moo;

has 'name'   => (is => 'ro', required => 1);
has 'gender' => (is => 'ro', required => 1);
has 'status' => (is => 'ro', required => 1);

1;
