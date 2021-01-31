#!/usr/bin/perl

use strict;
use warnings;

use Test::Deep;
use Test::More;
use Employee;

my $ceo           = Employee->new({ name => 'Joe', dept => 'CEO',            salary => 50000 });
my $headSales     = Employee->new({ name => 'Rod', dept => 'Head Sales',     salary => 40000 });
my $headMarketing = Employee->new({ name => 'Joe', dept => 'Head Marketing', salary => 40000 });

my $salesExecutive1 = Employee->new({ name => 'Tim', dept => 'Sales', salary => 20000 });
my $salesExecutive2 = Employee->new({ name => 'Tom', dept => 'Sales', salary => 20000 });

my $clerk1 = Employee->new({ name => 'Eli', dept => 'Marketing', salary => 20000 });
my $clerk2 = Employee->new({ name => 'Zeb', dept => 'Marketing', salary => 20000 });

$ceo->add($headSales);
$ceo->add($headMarketing);

$headSales->add($salesExecutive1);
$headSales->add($salesExecutive2);

$headMarketing->add($clerk1);
$headMarketing->add($clerk2);

is($ceo, 'Employee: [Name: Joe, Dept: CEO, Salary: 50000]');
is_deeply($ceo->subordinates, [$headSales, $headMarketing]);
is_deeply($headSales->subordinates, [$salesExecutive1, $salesExecutive2]);
is_deeply($headMarketing->subordinates, [$clerk1, $clerk2]);

done_testing();
