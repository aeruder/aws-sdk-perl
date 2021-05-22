# Generated by default/object.tt
package Paws::ECR::ReplicationConfiguration;
  use Moose;
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::ECR::ReplicationRule]', request_name => 'rules', traits => ['NameInRequest'], required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::ReplicationConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ECR::ReplicationConfiguration object:

  $service_obj->Method(Att1 => { Rules => $value, ..., Rules => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ECR::ReplicationConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->Rules

=head1 DESCRIPTION

The replication configuration for a registry.

=head1 ATTRIBUTES


=head2 B<REQUIRED> Rules => ArrayRef[L<Paws::ECR::ReplicationRule>]

An array of objects representing the replication rules for a
replication configuration. A replication configuration may contain only
one replication rule but the rule may contain one or more replication
destinations.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

