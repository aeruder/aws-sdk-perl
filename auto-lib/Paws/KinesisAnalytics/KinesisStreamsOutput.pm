package Paws::KinesisAnalytics::KinesisStreamsOutput;
  use Moose;
  has ResourceARN => (is => 'ro', isa => 'Str', required => 1);
  has RoleARN => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::KinesisAnalytics::KinesisStreamsOutput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::KinesisAnalytics::KinesisStreamsOutput object:

  $service_obj->Method(Att1 => { ResourceARN => $value, ..., RoleARN => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::KinesisAnalytics::KinesisStreamsOutput object:

  $result = $service_obj->Method(...);
  $result->Att1->ResourceARN

=head1 DESCRIPTION

When configuring application output, identifies an Amazon Kinesis
stream as the destination. You provide the stream Amazon Resource Name
(ARN) and also an IAM role ARN that Amazon Kinesis Analytics can use to
write to the stream on your behalf.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceARN => Str

  ARN of the destination Amazon Kinesis stream to write to.


=head2 B<REQUIRED> RoleARN => Str

  ARN of the IAM role that Amazon Kinesis Analytics can assume to write
to the destination stream on your behalf. You need to grant the
necessary permissions to this role.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::KinesisAnalytics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

