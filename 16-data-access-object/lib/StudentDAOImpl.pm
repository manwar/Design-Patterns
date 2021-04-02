package StudentDAOImpl;

# Implement interface (role) StudentDAO.

use Student;
use Moo;

has students => (is => 'rw', default => sub { {} });

with 'StudentDAO';

sub add {
    my ($self, $student) = @_;
    $self->students->{$student->id} = $student;
    return "Add student";
}

sub update {
    my ($self, $id, $name) = @_;
    $self->students->{$id}->name($name);
    return "Update student";
}

sub delete {
    my ($self, $id) = @_;
    delete $self->students->{$id};
    return "Delete student";
}

sub student {
    my ($self, $id) = @_;
    return $self->students->{$id};
}

1;
