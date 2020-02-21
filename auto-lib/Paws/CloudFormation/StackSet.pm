package Paws::CloudFormation::StackSet;
  use Moose;
  has AdministrationRoleARN => (is => 'ro', isa => 'Str');
  has AutoDeployment => (is => 'ro', isa => 'Paws::CloudFormation::AutoDeployment');
  has Capabilities => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Description => (is => 'ro', isa => 'Str');
  has ExecutionRoleName => (is => 'ro', isa => 'Str');
  has OrganizationalUnitIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::Parameter]');
  has PermissionModel => (is => 'ro', isa => 'Str');
  has StackSetARN => (is => 'ro', isa => 'Str');
  has StackSetDriftDetectionDetails => (is => 'ro', isa => 'Paws::CloudFormation::StackSetDriftDetectionDetails');
  has StackSetId => (is => 'ro', isa => 'Str');
  has StackSetName => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::Tag]');
  has TemplateBody => (is => 'ro', isa => 'Str', decode_as => 'JSON', method => 'Template', traits => ['JSONAttribute']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::StackSet

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFormation::StackSet object:

  $service_obj->Method(Att1 => { AdministrationRoleARN => $value, ..., TemplateBody => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFormation::StackSet object:

  $result = $service_obj->Method(...);
  $result->Att1->AdministrationRoleARN

=head1 DESCRIPTION

A structure that contains information about a stack set. A stack set
enables you to provision stacks into AWS accounts and across regions by
using a single CloudFormation template. In the stack set, you specify
the template to use, as well as any parameters and capabilities that
the template requires.

=head1 ATTRIBUTES


=head2 AdministrationRoleARN => Str

  The Amazon Resource Number (ARN) of the IAM role used to create or
update the stack set.

Use customized administrator roles to control which users or groups can
manage specific stack sets within the same administrator account. For
more information, see Prerequisites: Granting Permissions for Stack Set
Operations
(http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs.html)
in the I<AWS CloudFormation User Guide>.


=head2 AutoDeployment => L<Paws::CloudFormation::AutoDeployment>

  [C<Service-managed> permissions] Describes whether StackSets
automatically deploys to AWS Organizations accounts that are added to a
target organization or organizational unit (OU).


=head2 Capabilities => ArrayRef[Str|Undef]

  The capabilities that are allowed in the stack set. Some stack set
templates might include resources that can affect permissions in your
AWS accountE<mdash>for example, by creating new AWS Identity and Access
Management (IAM) users. For more information, see Acknowledging IAM
Resources in AWS CloudFormation Templates.
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/using-iam-template.html#capabilities)


=head2 Description => Str

  A description of the stack set that you specify when the stack set is
created or updated.


=head2 ExecutionRoleName => Str

  The name of the IAM execution role used to create or update the stack
set.

Use customized execution roles to control which stack resources users
and groups can include in their stack sets.


=head2 OrganizationalUnitIds => ArrayRef[Str|Undef]

  [C<Service-managed> permissions] The organization root ID or
organizational unit (OUs) IDs to which stacks in your stack set have
been deployed.


=head2 Parameters => ArrayRef[L<Paws::CloudFormation::Parameter>]

  A list of input parameters for a stack set.


=head2 PermissionModel => Str

  Describes how the IAM roles required for stack set operations are
created.

=over

=item *

With C<self-managed> permissions, you must create the administrator and
execution roles required to deploy to target accounts. For more
information, see Grant Self-Managed Stack Set Permissions
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-self-managed.html).

=item *

With C<service-managed> permissions, StackSets automatically creates
the IAM roles required to deploy to accounts managed by AWS
Organizations. For more information, see Grant Service-Managed Stack
Set Permissions
(https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/stacksets-prereqs-service-managed.html).

=back



=head2 StackSetARN => Str

  The Amazon Resource Number (ARN) of the stack set.


=head2 StackSetDriftDetectionDetails => L<Paws::CloudFormation::StackSetDriftDetectionDetails>

  Detailed information about the drift status of the stack set.

For stack sets, contains information about the last I<completed> drift
operation performed on the stack set. Information about drift
operations currently in progress is not included.


=head2 StackSetId => Str

  The ID of the stack set.


=head2 StackSetName => Str

  The name that's associated with the stack set.


=head2 Status => Str

  The status of the stack set.


=head2 Tags => ArrayRef[L<Paws::CloudFormation::Tag>]

  A list of tags that specify information about the stack set. A maximum
number of 50 tags can be specified.


=head2 TemplateBody => Str

  The structure that contains the body of the template that was used to
create or update the stack set.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

