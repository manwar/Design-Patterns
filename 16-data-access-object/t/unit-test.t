#!/usr/bin/perl

use strict;
use warnings;

use Test::More;
use Student;
use StudentDAOImpl;

my $student_dao = StudentDAOImpl->new;

my $joe  = Student->new({ id => 1, name => "Joe"  });
my $blog = Student->new({ id => 2, name => "Blog" });

# Add student
$student_dao->add($joe);
$student_dao->add($blog);

is($student_dao->student(1)->name, "Joe");
is($student_dao->student(2)->name, "Blog");

# Update student name
$student_dao->update(1, "JoeX");

is($student_dao->student(1)->name, "JoeX");

$student_dao->delete(1);
ok(! defined $student_dao->student(1));

done_testing();
