
package Paws::CostExplorer::GetDimensionValues;
  use Moose;
  has Context => (is => 'ro', isa => 'Str');
  has Dimension => (is => 'ro', isa => 'Str', required => 1);
  has Filter => (is => 'ro', isa => 'Paws::CostExplorer::Expression');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextPageToken => (is => 'ro', isa => 'Str');
  has SearchString => (is => 'ro', isa => 'Str');
  has SortBy => (is => 'ro', isa => 'ArrayRef[Paws::CostExplorer::SortDefinition]');
  has TimePeriod => (is => 'ro', isa => 'Paws::CostExplorer::DateInterval', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDimensionValues');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CostExplorer::GetDimensionValuesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CostExplorer::GetDimensionValues - Arguments for method GetDimensionValues on L<Paws::CostExplorer>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDimensionValues on the
L<AWS Cost Explorer Service|Paws::CostExplorer> service. Use the attributes of this class
as arguments to method GetDimensionValues.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDimensionValues.

=head1 SYNOPSIS

    my $ce = Paws->service('CostExplorer');
    my $GetDimensionValuesResponse = $ce->GetDimensionValues(
      Dimension  => 'AZ',
      TimePeriod => {
        End   => 'MyYearMonthDay',    # max: 40
        Start => 'MyYearMonthDay',    # max: 40

      },
      Context => 'COST_AND_USAGE',    # OPTIONAL
      Filter  => {
        And            => [ <Expression>, ... ],    # OPTIONAL
        CostCategories => {
          Key          => 'MyCostCategoryName',     # min: 1, max: 50; OPTIONAL
          MatchOptions => [
            'EQUALS',
            ... # values: EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
          ],    # OPTIONAL
          Values => [
            'MyValue', ...    # max: 1024
          ],                  # OPTIONAL
        },    # OPTIONAL
        Dimensions => {
          Key => 'AZ'
          , # values: AZ, INSTANCE_TYPE, LINKED_ACCOUNT, LINKED_ACCOUNT_NAME, OPERATION, PURCHASE_TYPE, REGION, SERVICE, SERVICE_CODE, USAGE_TYPE, USAGE_TYPE_GROUP, RECORD_TYPE, OPERATING_SYSTEM, TENANCY, SCOPE, PLATFORM, SUBSCRIPTION_ID, LEGAL_ENTITY_NAME, DEPLOYMENT_OPTION, DATABASE_ENGINE, CACHE_ENGINE, INSTANCE_TYPE_FAMILY, BILLING_ENTITY, RESERVATION_ID, RESOURCE_ID, RIGHTSIZING_TYPE, SAVINGS_PLANS_TYPE, SAVINGS_PLAN_ARN, PAYMENT_OPTION, AGREEMENT_END_DATE_TIME_AFTER, AGREEMENT_END_DATE_TIME_BEFORE
          MatchOptions => [
            'EQUALS',
            ... # values: EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
          ],    # OPTIONAL
          Values => [
            'MyValue', ...    # max: 1024
          ],                  # OPTIONAL
        },    # OPTIONAL
        Not  => <Expression>,
        Or   => [ <Expression>, ... ],    # OPTIONAL
        Tags => {
          Key          => 'MyTagKey',     # max: 1024; OPTIONAL
          MatchOptions => [
            'EQUALS',
            ... # values: EQUALS, ABSENT, STARTS_WITH, ENDS_WITH, CONTAINS, CASE_SENSITIVE, CASE_INSENSITIVE
          ],    # OPTIONAL
          Values => [
            'MyValue', ...    # max: 1024
          ],                  # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      MaxResults    => 1,                    # OPTIONAL
      NextPageToken => 'MyNextPageToken',    # OPTIONAL
      SearchString  => 'MySearchString',     # OPTIONAL
      SortBy        => [
        {
          Key => 'MySortDefinitionKey',      # max: 1024
          SortOrder => 'ASCENDING',    # values: ASCENDING, DESCENDING; OPTIONAL
        },
        ...
      ],                               # OPTIONAL
    );

    # Results:
    my $DimensionValues = $GetDimensionValuesResponse->DimensionValues;
    my $NextPageToken   = $GetDimensionValuesResponse->NextPageToken;
    my $ReturnSize      = $GetDimensionValuesResponse->ReturnSize;
    my $TotalSize       = $GetDimensionValuesResponse->TotalSize;

    # Returns a L<Paws::CostExplorer::GetDimensionValuesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ce/GetDimensionValues>

=head1 ATTRIBUTES


=head2 Context => Str

The context for the call to C<GetDimensionValues>. This can be
C<RESERVATIONS> or C<COST_AND_USAGE>. The default value is
C<COST_AND_USAGE>. If the context is set to C<RESERVATIONS>, the
resulting dimension values can be used in the
C<GetReservationUtilization> operation. If the context is set to
C<COST_AND_USAGE>, the resulting dimension values can be used in the
C<GetCostAndUsage> operation.

If you set the context to C<COST_AND_USAGE>, you can use the following
dimensions for searching:

=over

=item *

AZ - The Availability Zone. An example is C<us-east-1a>.

=item *

DATABASE_ENGINE - The Amazon Relational Database Service database.
Examples are Aurora or MySQL.

=item *

INSTANCE_TYPE - The type of Amazon EC2 instance. An example is
C<m4.xlarge>.

=item *

LEGAL_ENTITY_NAME - The name of the organization that sells you AWS
services, such as Amazon Web Services.

=item *

LINKED_ACCOUNT - The description in the attribute map that includes the
full name of the member account. The value field contains the AWS ID of
the member account.

=item *

OPERATING_SYSTEM - The operating system. Examples are Windows or Linux.

=item *

OPERATION - The action performed. Examples include C<RunInstance> and
C<CreateBucket>.

=item *

PLATFORM - The Amazon EC2 operating system. Examples are Windows or
Linux.

=item *

PURCHASE_TYPE - The reservation type of the purchase to which this
usage is related. Examples include On-Demand Instances and Standard
Reserved Instances.

=item *

SERVICE - The AWS service such as Amazon DynamoDB.

=item *

USAGE_TYPE - The type of usage. An example is DataTransfer-In-Bytes.
The response for the C<GetDimensionValues> operation includes a unit
attribute. Examples include GB and Hrs.

=item *

USAGE_TYPE_GROUP - The grouping of common usage types. An example is
Amazon EC2: CloudWatch E<ndash> Alarms. The response for this operation
includes a unit attribute.

=item *

REGION - The AWS Region.

=item *

RECORD_TYPE - The different types of charges such as RI fees, usage
costs, tax refunds, and credits.

=item *

RESOURCE_ID - The unique identifier of the resource. ResourceId is an
opt-in feature only available for last 14 days for EC2-Compute Service.

=back

If you set the context to C<RESERVATIONS>, you can use the following
dimensions for searching:

=over

=item *

AZ - The Availability Zone. An example is C<us-east-1a>.

=item *

CACHE_ENGINE - The Amazon ElastiCache operating system. Examples are
Windows or Linux.

=item *

DEPLOYMENT_OPTION - The scope of Amazon Relational Database Service
deployments. Valid values are C<SingleAZ> and C<MultiAZ>.

=item *

INSTANCE_TYPE - The type of Amazon EC2 instance. An example is
C<m4.xlarge>.

=item *

LINKED_ACCOUNT - The description in the attribute map that includes the
full name of the member account. The value field contains the AWS ID of
the member account.

=item *

PLATFORM - The Amazon EC2 operating system. Examples are Windows or
Linux.

=item *

REGION - The AWS Region.

=item *

SCOPE (Utilization only) - The scope of a Reserved Instance (RI).
Values are regional or a single Availability Zone.

=item *

TAG (Coverage only) - The tags that are associated with a Reserved
Instance (RI).

=item *

TENANCY - The tenancy of a resource. Examples are shared or dedicated.

=back

If you set the context to C<SAVINGS_PLANS>, you can use the following
dimensions for searching:

=over

=item *

SAVINGS_PLANS_TYPE - Type of Savings Plans (EC2 Instance or Compute)

=item *

PAYMENT_OPTION - Payment option for the given Savings Plans (for
example, All Upfront)

=item *

REGION - The AWS Region.

=item *

INSTANCE_TYPE_FAMILY - The family of instances (For example, C<m5>)

=item *

LINKED_ACCOUNT - The description in the attribute map that includes the
full name of the member account. The value field contains the AWS ID of
the member account.

=item *

SAVINGS_PLAN_ARN - The unique identifier for your Savings Plan

=back


Valid values are: C<"COST_AND_USAGE">, C<"RESERVATIONS">, C<"SAVINGS_PLANS">

=head2 B<REQUIRED> Dimension => Str

The name of the dimension. Each C<Dimension> is available for a
different C<Context>. For more information, see C<Context>.

Valid values are: C<"AZ">, C<"INSTANCE_TYPE">, C<"LINKED_ACCOUNT">, C<"LINKED_ACCOUNT_NAME">, C<"OPERATION">, C<"PURCHASE_TYPE">, C<"REGION">, C<"SERVICE">, C<"SERVICE_CODE">, C<"USAGE_TYPE">, C<"USAGE_TYPE_GROUP">, C<"RECORD_TYPE">, C<"OPERATING_SYSTEM">, C<"TENANCY">, C<"SCOPE">, C<"PLATFORM">, C<"SUBSCRIPTION_ID">, C<"LEGAL_ENTITY_NAME">, C<"DEPLOYMENT_OPTION">, C<"DATABASE_ENGINE">, C<"CACHE_ENGINE">, C<"INSTANCE_TYPE_FAMILY">, C<"BILLING_ENTITY">, C<"RESERVATION_ID">, C<"RESOURCE_ID">, C<"RIGHTSIZING_TYPE">, C<"SAVINGS_PLANS_TYPE">, C<"SAVINGS_PLAN_ARN">, C<"PAYMENT_OPTION">, C<"AGREEMENT_END_DATE_TIME_AFTER">, C<"AGREEMENT_END_DATE_TIME_BEFORE">

=head2 Filter => L<Paws::CostExplorer::Expression>





=head2 MaxResults => Int

This field is only used when SortBy is provided in the request. The
maximum number of objects that to be returned for this request. If
MaxResults is not specified with SortBy, the request will return 1000
results as the default value for this parameter.

For C<GetDimensionValues>, MaxResults has an upper limit of 1000.



=head2 NextPageToken => Str

The token to retrieve the next set of results. AWS provides the token
when the response from a previous call has more results than the
maximum page size.



=head2 SearchString => Str

The value that you want to search the filter values for.



=head2 SortBy => ArrayRef[L<Paws::CostExplorer::SortDefinition>]

The value by which you want to sort the data.

The key represents cost and usage metrics. The following values are
supported:

=over

=item *

C<BlendedCost>

=item *

C<UnblendedCost>

=item *

C<AmortizedCost>

=item *

C<NetAmortizedCost>

=item *

C<NetUnblendedCost>

=item *

C<UsageQuantity>

=item *

C<NormalizedUsageAmount>

=back

Supported values for C<SortOrder> are C<ASCENDING> or C<DESCENDING>.

When you specify a C<SortBy> paramater, the context must be
C<COST_AND_USAGE>. Further, when using C<SortBy>, C<NextPageToken> and
C<SearchString> are not supported.



=head2 B<REQUIRED> TimePeriod => L<Paws::CostExplorer::DateInterval>

The start and end dates for retrieving the dimension values. The start
date is inclusive, but the end date is exclusive. For example, if
C<start> is C<2017-01-01> and C<end> is C<2017-05-01>, then the cost
and usage data is retrieved from C<2017-01-01> up to and including
C<2017-04-30> but not including C<2017-05-01>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDimensionValues in L<Paws::CostExplorer>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

