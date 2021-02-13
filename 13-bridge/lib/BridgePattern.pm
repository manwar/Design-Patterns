package BridgePattern;

$BridgePattern::VERSION = '0.01';

=head1 NAME

BridgePattern - Demo Bridge design pattern.

=head1 SYNOPSIS

    use Shape::Circle;
    use Shape::Circle::Red;
    use Shape::Circle::Green;

    my $redCircle = Shape::Circle->new({
        x       => 20,
        y       => 20,
        radius  => 10,
        drawAPI => Shape::Circle::Red->new,
    });

    my $greenCircle = Shape::Circle->new({
        x       => 10,
        y       => 10,
        radius  => 20,
        drawAPI => Shape::Circle::Green->new,
    });

    print $redCircle->draw;
    print $greenCircle->draw;

=cut

1;
