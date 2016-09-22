
package Paws::ELBv2::SetSecurityGroupsOutput;
  use Moose;
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ELBv2::SetSecurityGroupsOutput

=head1 ATTRIBUTES


=head2 SecurityGroupIds => ArrayRef[Str|Undef]

The IDs of the security groups associated with the load balancer.




=cut

