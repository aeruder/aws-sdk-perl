package Paws::Connect::QueueReference;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::QueueReference

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Connect::QueueReference object:

  $service_obj->Method(Att1 => { Arn => $value, ..., Id => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Connect::QueueReference object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

A QueueReference object that contains the the QueueId and ARN for the
queue resource for which metrics are returned.

=head1 ATTRIBUTES


=head2 Arn => Str

  The Amazon Resource Name (ARN) of queue.


=head2 Id => Str

  The ID of the queue associated with the metrics returned.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

