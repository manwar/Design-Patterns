package DataAccessObject;

$DataAccessObject::VERSION = '0.01';

=head1 NAME

DataAccessObject - Demo Data Access Object design pattern.

=head1 SYNOPSIS

    use Student;
    use StudentDAOImpl;

    my $student_dao = StudentDAOImpl->new;

    # Add student
    $student_dao->add(Student->new({ id => 1, name => "Joe"  });
    $student_dao->add(Student->new({ id => 2, name => "Blog" });

    # Update student name
    $student_dao->update(1, "JoeX");

    # Fetch all students
    foreach my $id (keys %{$student_dao->students}) {
        print sprintf("Id: %d, Name: %s\n", $id, $student_dao->get($id));
    }

    # Delete student
    $student_dao->delete(1);

=cut

1;
