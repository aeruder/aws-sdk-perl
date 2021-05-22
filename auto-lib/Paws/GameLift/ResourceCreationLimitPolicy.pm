# Generated by default/object.tt
package Paws::GameLift::ResourceCreationLimitPolicy;
  use Moose;
  has NewGameSessionsPerCreator => (is => 'ro', isa => 'Int');
  has PolicyPeriodInMinutes => (is => 'ro', isa => 'Int');

1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::ResourceCreationLimitPolicy

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::GameLift::ResourceCreationLimitPolicy object:

  $service_obj->Method(Att1 => { NewGameSessionsPerCreator => $value, ..., PolicyPeriodInMinutes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::GameLift::ResourceCreationLimitPolicy object:

  $result = $service_obj->Method(...);
  $result->Att1->NewGameSessionsPerCreator

=head1 DESCRIPTION

A policy that puts limits on the number of game sessions that a player
can create within a specified span of time. With this policy, you can
control players' ability to consume available resources.

The policy is evaluated when a player tries to create a new game
session. On receiving a C<CreateGameSession> request, GameLift checks
that the player (identified by C<CreatorId>) has created fewer than
game session limit in the specified time period.

The resource creation limit policy is included in FleetAttributes.

=head1 ATTRIBUTES


=head2 NewGameSessionsPerCreator => Int

The maximum number of game sessions that an individual can create
during the policy period.


=head2 PolicyPeriodInMinutes => Int

The time span used in evaluating the resource creation limit policy.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

