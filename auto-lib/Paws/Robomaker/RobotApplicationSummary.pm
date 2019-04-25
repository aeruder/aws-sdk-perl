package Paws::Robomaker::RobotApplicationSummary;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', request_name => 'arn', traits => ['NameInRequest']);
  has LastUpdatedAt => (is => 'ro', isa => 'Str', request_name => 'lastUpdatedAt', traits => ['NameInRequest']);
  has Name => (is => 'ro', isa => 'Str', request_name => 'name', traits => ['NameInRequest']);
  has Version => (is => 'ro', isa => 'Str', request_name => 'version', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Robomaker::RobotApplicationSummary

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Robomaker::RobotApplicationSummary object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Robomaker::RobotApplicationSummary object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Summary information for a robot application.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of the robot.


=head2 LastUpdatedAt => Str

  The time, in milliseconds since the epoch, when the robot application
was last updated.


=head2 Name => Str

  The name of the robot application.


=head2 Version => Str

  The version of the robot application.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Robomaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

