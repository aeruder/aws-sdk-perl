
package Paws::CodeDeploy::UpdateDeploymentGroup;
  use Moose;
  has ApplicationName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'applicationName' , required => 1);
  has AutoScalingGroups => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'autoScalingGroups' );
  has CurrentDeploymentGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'currentDeploymentGroupName' , required => 1);
  has DeploymentConfigName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'deploymentConfigName' );
  has Ec2TagFilters => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::EC2TagFilter]', traits => ['NameInRequest'], request_name => 'ec2TagFilters' );
  has NewDeploymentGroupName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'newDeploymentGroupName' );
  has OnPremisesInstanceTagFilters => (is => 'ro', isa => 'ArrayRef[Paws::CodeDeploy::TagFilter]', traits => ['NameInRequest'], request_name => 'onPremisesInstanceTagFilters' );
  has ServiceRoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceRoleArn' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDeploymentGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CodeDeploy::UpdateDeploymentGroupOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CodeDeploy::UpdateDeploymentGroup - Arguments for method UpdateDeploymentGroup on Paws::CodeDeploy

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDeploymentGroup on the 
AWS CodeDeploy service. Use the attributes of this class
as arguments to method UpdateDeploymentGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDeploymentGroup.

As an example:

  $service_obj->UpdateDeploymentGroup(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationName => Str

The application name corresponding to the deployment group to update.



=head2 AutoScalingGroups => ArrayRef[Str]

The replacement list of Auto Scaling groups to be included in the
deployment group, if you want to change them.



=head2 B<REQUIRED> CurrentDeploymentGroupName => Str

The current name of the existing deployment group.



=head2 DeploymentConfigName => Str

The replacement deployment configuration name to use, if you want to
change it.



=head2 Ec2TagFilters => ArrayRef[L<Paws::CodeDeploy::EC2TagFilter>]

The replacement set of Amazon EC2 tags to filter on, if you want to
change them.



=head2 NewDeploymentGroupName => Str

The new name of the deployment group, if you want to change it.



=head2 OnPremisesInstanceTagFilters => ArrayRef[L<Paws::CodeDeploy::TagFilter>]

The replacement set of on-premises instance tags for filter on, if you
want to change them.



=head2 ServiceRoleArn => Str

A replacement service role's ARN, if you want to change it.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDeploymentGroup in L<Paws::CodeDeploy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

