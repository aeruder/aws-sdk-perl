
package Paws::ApplicationAutoScaling::PutScheduledAction;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str');
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has ScalableDimension => (is => 'ro', isa => 'Str', required => 1);
  has ScalableTargetAction => (is => 'ro', isa => 'Paws::ApplicationAutoScaling::ScalableTargetAction');
  has Schedule => (is => 'ro', isa => 'Str');
  has ScheduledActionName => (is => 'ro', isa => 'Str', required => 1);
  has ServiceNamespace => (is => 'ro', isa => 'Str', required => 1);
  has StartTime => (is => 'ro', isa => 'Str');
  has Timezone => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutScheduledAction');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationAutoScaling::PutScheduledActionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationAutoScaling::PutScheduledAction - Arguments for method PutScheduledAction on L<Paws::ApplicationAutoScaling>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutScheduledAction on the
L<Application Auto Scaling|Paws::ApplicationAutoScaling> service. Use the attributes of this class
as arguments to method PutScheduledAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutScheduledAction.

=head1 SYNOPSIS

    my $application-autoscaling = Paws->service('ApplicationAutoScaling');
    my $PutScheduledActionResponse =
      $application -autoscaling->PutScheduledAction(
      ResourceId           => 'MyResourceIdMaxLen1600',
      ScalableDimension    => 'ecs:service:DesiredCount',
      ScheduledActionName  => 'MyScheduledActionName',
      ServiceNamespace     => 'ecs',
      EndTime              => '1970-01-01T01:00:00',        # OPTIONAL
      ScalableTargetAction => {
        MaxCapacity => 1,                                   # OPTIONAL
        MinCapacity => 1,                                   # OPTIONAL
      },    # OPTIONAL
      Schedule  => 'MyResourceIdMaxLen1600',    # OPTIONAL
      StartTime => '1970-01-01T01:00:00',       # OPTIONAL
      Timezone  => 'MyResourceIdMaxLen1600',    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/application-autoscaling/PutScheduledAction>

=head1 ATTRIBUTES


=head2 EndTime => Str

The date and time for the recurring schedule to end, in UTC.



=head2 B<REQUIRED> ResourceId => Str

The identifier of the resource associated with the scheduled action.
This string consists of the resource type and unique identifier.

=over

=item *

ECS service - The resource type is C<service> and the unique identifier
is the cluster name and service name. Example:
C<service/default/sample-webapp>.

=item *

Spot Fleet request - The resource type is C<spot-fleet-request> and the
unique identifier is the Spot Fleet request ID. Example:
C<spot-fleet-request/sfr-73fbd2ce-aa30-494c-8788-1cee4EXAMPLE>.

=item *

EMR cluster - The resource type is C<instancegroup> and the unique
identifier is the cluster ID and instance group ID. Example:
C<instancegroup/j-2EEZNYKUA1NTV/ig-1791Y4E1L8YI0>.

=item *

AppStream 2.0 fleet - The resource type is C<fleet> and the unique
identifier is the fleet name. Example: C<fleet/sample-fleet>.

=item *

DynamoDB table - The resource type is C<table> and the unique
identifier is the table name. Example: C<table/my-table>.

=item *

DynamoDB global secondary index - The resource type is C<index> and the
unique identifier is the index name. Example:
C<table/my-table/index/my-table-index>.

=item *

Aurora DB cluster - The resource type is C<cluster> and the unique
identifier is the cluster name. Example: C<cluster:my-db-cluster>.

=item *

Amazon SageMaker endpoint variant - The resource type is C<variant> and
the unique identifier is the resource ID. Example:
C<endpoint/my-end-point/variant/KMeansClustering>.

=item *

Custom resources are not supported with a resource type. This parameter
must specify the C<OutputValue> from the CloudFormation template stack
used to access the resources. The unique identifier is defined by the
service provider. More information is available in our GitHub
repository (https://github.com/aws/aws-auto-scaling-custom-resource).

=item *

Amazon Comprehend document classification endpoint - The resource type
and unique identifier are specified using the endpoint ARN. Example:
C<arn:aws:comprehend:us-west-2:123456789012:document-classifier-endpoint/EXAMPLE>.

=item *

Amazon Comprehend entity recognizer endpoint - The resource type and
unique identifier are specified using the endpoint ARN. Example:
C<arn:aws:comprehend:us-west-2:123456789012:entity-recognizer-endpoint/EXAMPLE>.

=item *

Lambda provisioned concurrency - The resource type is C<function> and
the unique identifier is the function name with a function version or
alias name suffix that is not C<$LATEST>. Example:
C<function:my-function:prod> or C<function:my-function:1>.

=item *

Amazon Keyspaces table - The resource type is C<table> and the unique
identifier is the table name. Example:
C<keyspace/mykeyspace/table/mytable>.

=item *

Amazon MSK cluster - The resource type and unique identifier are
specified using the cluster ARN. Example:
C<arn:aws:kafka:us-east-1:123456789012:cluster/demo-cluster-1/6357e0b2-0e6a-4b86-a0b4-70df934c2e31-5>.

=back




=head2 B<REQUIRED> ScalableDimension => Str

The scalable dimension. This string consists of the service namespace,
resource type, and scaling property.

=over

=item *

C<ecs:service:DesiredCount> - The desired task count of an ECS service.

=item *

C<ec2:spot-fleet-request:TargetCapacity> - The target capacity of a
Spot Fleet request.

=item *

C<elasticmapreduce:instancegroup:InstanceCount> - The instance count of
an EMR Instance Group.

=item *

C<appstream:fleet:DesiredCapacity> - The desired capacity of an
AppStream 2.0 fleet.

=item *

C<dynamodb:table:ReadCapacityUnits> - The provisioned read capacity for
a DynamoDB table.

=item *

C<dynamodb:table:WriteCapacityUnits> - The provisioned write capacity
for a DynamoDB table.

=item *

C<dynamodb:index:ReadCapacityUnits> - The provisioned read capacity for
a DynamoDB global secondary index.

=item *

C<dynamodb:index:WriteCapacityUnits> - The provisioned write capacity
for a DynamoDB global secondary index.

=item *

C<rds:cluster:ReadReplicaCount> - The count of Aurora Replicas in an
Aurora DB cluster. Available for Aurora MySQL-compatible edition and
Aurora PostgreSQL-compatible edition.

=item *

C<sagemaker:variant:DesiredInstanceCount> - The number of EC2 instances
for an Amazon SageMaker model endpoint variant.

=item *

C<custom-resource:ResourceType:Property> - The scalable dimension for a
custom resource provided by your own application or service.

=item *

C<comprehend:document-classifier-endpoint:DesiredInferenceUnits> - The
number of inference units for an Amazon Comprehend document
classification endpoint.

=item *

C<comprehend:entity-recognizer-endpoint:DesiredInferenceUnits> - The
number of inference units for an Amazon Comprehend entity recognizer
endpoint.

=item *

C<lambda:function:ProvisionedConcurrency> - The provisioned concurrency
for a Lambda function.

=item *

C<cassandra:table:ReadCapacityUnits> - The provisioned read capacity
for an Amazon Keyspaces table.

=item *

C<cassandra:table:WriteCapacityUnits> - The provisioned write capacity
for an Amazon Keyspaces table.

=item *

C<kafka:broker-storage:VolumeSize> - The provisioned volume size (in
GiB) for brokers in an Amazon MSK cluster.

=back


Valid values are: C<"ecs:service:DesiredCount">, C<"ec2:spot-fleet-request:TargetCapacity">, C<"elasticmapreduce:instancegroup:InstanceCount">, C<"appstream:fleet:DesiredCapacity">, C<"dynamodb:table:ReadCapacityUnits">, C<"dynamodb:table:WriteCapacityUnits">, C<"dynamodb:index:ReadCapacityUnits">, C<"dynamodb:index:WriteCapacityUnits">, C<"rds:cluster:ReadReplicaCount">, C<"sagemaker:variant:DesiredInstanceCount">, C<"custom-resource:ResourceType:Property">, C<"comprehend:document-classifier-endpoint:DesiredInferenceUnits">, C<"comprehend:entity-recognizer-endpoint:DesiredInferenceUnits">, C<"lambda:function:ProvisionedConcurrency">, C<"cassandra:table:ReadCapacityUnits">, C<"cassandra:table:WriteCapacityUnits">, C<"kafka:broker-storage:VolumeSize">

=head2 ScalableTargetAction => L<Paws::ApplicationAutoScaling::ScalableTargetAction>

The new minimum and maximum capacity. You can set both values or just
one. At the scheduled time, if the current capacity is below the
minimum capacity, Application Auto Scaling scales out to the minimum
capacity. If the current capacity is above the maximum capacity,
Application Auto Scaling scales in to the maximum capacity.



=head2 Schedule => Str

The schedule for this action. The following formats are supported:

=over

=item *

At expressions - "C<at(I<yyyy>-I<mm>-I<dd>TI<hh>:I<mm>:I<ss>)>"

=item *

Rate expressions - "C<rate(I<value> I<unit>)>"

=item *

Cron expressions - "C<cron(I<fields>)>"

=back

At expressions are useful for one-time schedules. Cron expressions are
useful for scheduled actions that run periodically at a specified date
and time, and rate expressions are useful for scheduled actions that
run at a regular interval.

At and cron expressions use Universal Coordinated Time (UTC) by
default.

The cron format consists of six fields separated by white spaces:
[Minutes] [Hours] [Day_of_Month] [Month] [Day_of_Week] [Year].

For rate expressions, I<value> is a positive integer and I<unit> is
C<minute> | C<minutes> | C<hour> | C<hours> | C<day> | C<days>.

For more information and examples, see Example scheduled actions for
Application Auto Scaling
(https://docs.aws.amazon.com/autoscaling/application/userguide/examples-scheduled-actions.html)
in the I<Application Auto Scaling User Guide>.



=head2 B<REQUIRED> ScheduledActionName => Str

The name of the scheduled action. This name must be unique among all
other scheduled actions on the specified scalable target.



=head2 B<REQUIRED> ServiceNamespace => Str

The namespace of the AWS service that provides the resource. For a
resource provided by your own application or service, use
C<custom-resource> instead.

Valid values are: C<"ecs">, C<"elasticmapreduce">, C<"ec2">, C<"appstream">, C<"dynamodb">, C<"rds">, C<"sagemaker">, C<"custom-resource">, C<"comprehend">, C<"lambda">, C<"cassandra">, C<"kafka">

=head2 StartTime => Str

The date and time for this scheduled action to start, in UTC.



=head2 Timezone => Str

Specifies the time zone used when setting a scheduled action by using
an at or cron expression. If a time zone is not provided, UTC is used
by default.

Valid values are the canonical names of the IANA time zones supported
by Joda-Time (such as C<Etc/GMT+9> or C<Pacific/Tahiti>). For more
information, see https://www.joda.org/joda-time/timezones.html
(https://www.joda.org/joda-time/timezones.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutScheduledAction in L<Paws::ApplicationAutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

