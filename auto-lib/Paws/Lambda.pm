package Paws::Lambda;
  use Moose;
  sub service { 'lambda' }
  sub signing_name { 'lambda' }
  sub version { '2015-03-31' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AddLayerVersionPermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::AddLayerVersionPermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AddPermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::AddPermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::CreateAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateEventSourceMapping {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::CreateEventSourceMapping', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::CreateFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::DeleteAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEventSourceMapping {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::DeleteEventSourceMapping', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::DeleteFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteFunctionConcurrency {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::DeleteFunctionConcurrency', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteLayerVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::DeleteLayerVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAccountSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::GetAccountSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::GetAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEventSourceMapping {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::GetEventSourceMapping', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::GetFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetFunctionConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::GetFunctionConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLayerVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::GetLayerVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetLayerVersionPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::GetLayerVersionPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPolicy {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::GetPolicy', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub Invoke {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::Invoke', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub InvokeAsync {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::InvokeAsync', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAliases {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::ListAliases', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListEventSourceMappings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::ListEventSourceMappings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListFunctions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::ListFunctions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLayers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::ListLayers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListLayerVersions {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::ListLayerVersions', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListTags {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::ListTags', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListVersionsByFunction {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::ListVersionsByFunction', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PublishLayerVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::PublishLayerVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PublishVersion {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::PublishVersion', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutFunctionConcurrency {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::PutFunctionConcurrency', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemoveLayerVersionPermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::RemoveLayerVersionPermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RemovePermission {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::RemovePermission', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub TagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::TagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UntagResource {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::UntagResource', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAlias {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::UpdateAlias', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateEventSourceMapping {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::UpdateEventSourceMapping', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFunctionCode {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::UpdateFunctionCode', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateFunctionConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Lambda::UpdateFunctionConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAliases {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAliases(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->ListAliases(@_, Marker => $next_result->NextMarker);
        push @{ $result->Aliases }, @{ $next_result->Aliases };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'Aliases') foreach (@{ $result->Aliases });
        $result = $self->ListAliases(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'Aliases') foreach (@{ $result->Aliases });
    }

    return undef
  }
  sub ListAllEventSourceMappings {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListEventSourceMappings(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->ListEventSourceMappings(@_, Marker => $next_result->NextMarker);
        push @{ $result->EventSourceMappings }, @{ $next_result->EventSourceMappings };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'EventSourceMappings') foreach (@{ $result->EventSourceMappings });
        $result = $self->ListEventSourceMappings(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'EventSourceMappings') foreach (@{ $result->EventSourceMappings });
    }

    return undef
  }
  sub ListAllFunctions {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListFunctions(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextMarker) {
        $next_result = $self->ListFunctions(@_, Marker => $next_result->NextMarker);
        push @{ $result->Functions }, @{ $next_result->Functions };
      }
      return $result;
    } else {
      while ($result->NextMarker) {
        $callback->($_ => 'Functions') foreach (@{ $result->Functions });
        $result = $self->ListFunctions(@_, Marker => $result->NextMarker);
      }
      $callback->($_ => 'Functions') foreach (@{ $result->Functions });
    }

    return undef
  }


  sub operations { qw/AddLayerVersionPermission AddPermission CreateAlias CreateEventSourceMapping CreateFunction DeleteAlias DeleteEventSourceMapping DeleteFunction DeleteFunctionConcurrency DeleteLayerVersion GetAccountSettings GetAlias GetEventSourceMapping GetFunction GetFunctionConfiguration GetLayerVersion GetLayerVersionPolicy GetPolicy Invoke InvokeAsync ListAliases ListEventSourceMappings ListFunctions ListLayers ListLayerVersions ListTags ListVersionsByFunction PublishLayerVersion PublishVersion PutFunctionConcurrency RemoveLayerVersionPermission RemovePermission TagResource UntagResource UpdateAlias UpdateEventSourceMapping UpdateFunctionCode UpdateFunctionConfiguration / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda - Perl Interface to AWS AWS Lambda

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Lambda');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

AWS Lambda

B<Overview>

This is the I<AWS Lambda API Reference>. The AWS Lambda Developer Guide
provides additional information. For the service overview, see What is
AWS Lambda (http://docs.aws.amazon.com/lambda/latest/dg/welcome.html),
and for information about how the service works, see AWS Lambda: How it
Works
(http://docs.aws.amazon.com/lambda/latest/dg/lambda-introduction.html)
in the B<AWS Lambda Developer Guide>.

For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lambda-2015-03-31>


=head1 METHODS

=head2 AddLayerVersionPermission

=over

=item Action => Str

=item LayerName => Str

=item Principal => Str

=item StatementId => Str

=item VersionNumber => Int

=item [OrganizationId => Str]

=item [RevisionId => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::AddLayerVersionPermission>

Returns: a L<Paws::Lambda::AddLayerVersionPermissionResponse> instance

Adds permissions to the resource-based policy of a version of a
function layer. Use this action to grant layer usage permission to
other accounts. You can grant permission to a single account, all AWS
accounts, or all accounts in an organization.

To revoke permission, call RemoveLayerVersionPermission with the
statement ID that you specified when you added it.


=head2 AddPermission

=over

=item Action => Str

=item FunctionName => Str

=item Principal => Str

=item StatementId => Str

=item [EventSourceToken => Str]

=item [Qualifier => Str]

=item [RevisionId => Str]

=item [SourceAccount => Str]

=item [SourceArn => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::AddPermission>

Returns: a L<Paws::Lambda::AddPermissionResponse> instance

Adds a permission to the resource policy associated with the specified
AWS Lambda function. You use resource policies to grant permissions to
event sources that use the I<push> model. In a I<push> model, event
sources (such as Amazon S3 and custom applications) invoke your Lambda
function. Each permission you add to the resource policy allows an
event source permission to invoke the Lambda function.

Permissions apply to the Amazon Resource Name (ARN) used to invoke the
function, which can be unqualified (the unpublished version of the
function), or include a version or alias. If a client uses a version or
alias to invoke a function, use the C<Qualifier> parameter to apply
permissions to that ARN. For more information about versioning, see AWS
Lambda Function Versioning and Aliases
(http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).

This operation requires permission for the C<lambda:AddPermission>
action.


=head2 CreateAlias

=over

=item FunctionName => Str

=item FunctionVersion => Str

=item Name => Str

=item [Description => Str]

=item [RoutingConfig => L<Paws::Lambda::AliasRoutingConfiguration>]


=back

Each argument is described in detail in: L<Paws::Lambda::CreateAlias>

Returns: a L<Paws::Lambda::AliasConfiguration> instance

Creates an alias that points to the specified Lambda function version.
For more information, see Introduction to AWS Lambda Aliases
(http://docs.aws.amazon.com/lambda/latest/dg/aliases-intro.html).

Alias names are unique for a given function. This requires permission
for the lambda:CreateAlias action.


=head2 CreateEventSourceMapping

=over

=item EventSourceArn => Str

=item FunctionName => Str

=item [BatchSize => Int]

=item [Enabled => Bool]

=item [StartingPosition => Str]

=item [StartingPositionTimestamp => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::CreateEventSourceMapping>

Returns: a L<Paws::Lambda::EventSourceMappingConfiguration> instance

Creates a mapping between an event source and an AWS Lambda function.
Lambda reads items from the event source and triggers the function.

For details about each event source type, see the following topics.

=over

=item *

Using AWS Lambda with Amazon Kinesis
(http://docs.aws.amazon.com/lambda/latest/dg/with-kinesis.html)

=item *

Using AWS Lambda with Amazon SQS
(http://docs.aws.amazon.com/lambda/latest/dg/with-sqs.html)

=item *

Using AWS Lambda with Amazon DynamoDB
(http://docs.aws.amazon.com/lambda/latest/dg/with-ddb.html)

=back



=head2 CreateFunction

=over

=item Code => L<Paws::Lambda::FunctionCode>

=item FunctionName => Str

=item Handler => Str

=item Role => Str

=item Runtime => Str

=item [DeadLetterConfig => L<Paws::Lambda::DeadLetterConfig>]

=item [Description => Str]

=item [Environment => L<Paws::Lambda::Environment>]

=item [KMSKeyArn => Str]

=item [Layers => ArrayRef[Str|Undef]]

=item [MemorySize => Int]

=item [Publish => Bool]

=item [Tags => L<Paws::Lambda::Tags>]

=item [Timeout => Int]

=item [TracingConfig => L<Paws::Lambda::TracingConfig>]

=item [VpcConfig => L<Paws::Lambda::VpcConfig>]


=back

Each argument is described in detail in: L<Paws::Lambda::CreateFunction>

Returns: a L<Paws::Lambda::FunctionConfiguration> instance

Creates a new Lambda function. The function configuration is created
from the request parameters, and the code for the function is provided
by a .zip file. The function name is case-sensitive.

This operation requires permission for the C<lambda:CreateFunction>
action.


=head2 DeleteAlias

=over

=item FunctionName => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Lambda::DeleteAlias>

Returns: nothing

Deletes the specified Lambda function alias. For more information, see
Introduction to AWS Lambda Aliases
(http://docs.aws.amazon.com/lambda/latest/dg/aliases-intro.html).

This requires permission for the lambda:DeleteAlias action.


=head2 DeleteEventSourceMapping

=over

=item UUID => Str


=back

Each argument is described in detail in: L<Paws::Lambda::DeleteEventSourceMapping>

Returns: a L<Paws::Lambda::EventSourceMappingConfiguration> instance

Deletes an event source mapping.


=head2 DeleteFunction

=over

=item FunctionName => Str

=item [Qualifier => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::DeleteFunction>

Returns: nothing

Deletes a Lambda function. To delete a specific function version, use
the C<Qualifier> parameter. Otherwise, all versions and aliases are
deleted. Event source mappings are not deleted.

This operation requires permission for the C<lambda:DeleteFunction>
action.


=head2 DeleteFunctionConcurrency

=over

=item FunctionName => Str


=back

Each argument is described in detail in: L<Paws::Lambda::DeleteFunctionConcurrency>

Returns: nothing

Removes concurrent execution limits from this function. For more
information, see Managing Concurrency
(http://docs.aws.amazon.com/lambda/latest/dg/concurrent-executions.html).


=head2 DeleteLayerVersion

=over

=item LayerName => Str

=item VersionNumber => Int


=back

Each argument is described in detail in: L<Paws::Lambda::DeleteLayerVersion>

Returns: nothing

Deletes a version of a function layer. Deleted versions can no longer
be viewed or added to functions. However, a copy of the version remains
in Lambda until no functions refer to it.


=head2 GetAccountSettings






Each argument is described in detail in: L<Paws::Lambda::GetAccountSettings>

Returns: a L<Paws::Lambda::GetAccountSettingsResponse> instance

Retrieves details about your account's limits
(http://docs.aws.amazon.com/lambda/latest/dg/limits.html) and usage in
a region.


=head2 GetAlias

=over

=item FunctionName => Str

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Lambda::GetAlias>

Returns: a L<Paws::Lambda::AliasConfiguration> instance

Returns the specified alias information such as the alias ARN,
description, and function version it is pointing to. For more
information, see Introduction to AWS Lambda Aliases
(http://docs.aws.amazon.com/lambda/latest/dg/aliases-intro.html).

This requires permission for the C<lambda:GetAlias> action.


=head2 GetEventSourceMapping

=over

=item UUID => Str


=back

Each argument is described in detail in: L<Paws::Lambda::GetEventSourceMapping>

Returns: a L<Paws::Lambda::EventSourceMappingConfiguration> instance

Returns details about an event source mapping.


=head2 GetFunction

=over

=item FunctionName => Str

=item [Qualifier => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::GetFunction>

Returns: a L<Paws::Lambda::GetFunctionResponse> instance

Returns the configuration information of the Lambda function and a
presigned URL link to the .zip file you uploaded with CreateFunction so
you can download the .zip file. Note that the URL is valid for up to 10
minutes. The configuration information is the same information you
provided as parameters when uploading the function.

Use the C<Qualifier> parameter to retrieve a published version of the
function. Otherwise, returns the unpublished version (C<$LATEST>). For
more information, see AWS Lambda Function Versioning and Aliases
(http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).

This operation requires permission for the C<lambda:GetFunction>
action.


=head2 GetFunctionConfiguration

=over

=item FunctionName => Str

=item [Qualifier => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::GetFunctionConfiguration>

Returns: a L<Paws::Lambda::FunctionConfiguration> instance

Returns the configuration information of the Lambda function. This the
same information you provided as parameters when uploading the function
by using CreateFunction.

If you are using the versioning feature, you can retrieve this
information for a specific function version by using the optional
C<Qualifier> parameter and specifying the function version or alias
that points to it. If you don't provide it, the API returns information
about the $LATEST version of the function. For more information about
versioning, see AWS Lambda Function Versioning and Aliases
(http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).

This operation requires permission for the
C<lambda:GetFunctionConfiguration> operation.


=head2 GetLayerVersion

=over

=item LayerName => Str

=item VersionNumber => Int


=back

Each argument is described in detail in: L<Paws::Lambda::GetLayerVersion>

Returns: a L<Paws::Lambda::GetLayerVersionResponse> instance

Returns information about a version of a function layer, with a link to
download the layer archive that's valid for 10 minutes.


=head2 GetLayerVersionPolicy

=over

=item LayerName => Str

=item VersionNumber => Int


=back

Each argument is described in detail in: L<Paws::Lambda::GetLayerVersionPolicy>

Returns: a L<Paws::Lambda::GetLayerVersionPolicyResponse> instance

Returns the permission policy for a layer version. For more
information, see AddLayerVersionPermission.


=head2 GetPolicy

=over

=item FunctionName => Str

=item [Qualifier => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::GetPolicy>

Returns: a L<Paws::Lambda::GetPolicyResponse> instance

Returns the resource policy associated with the specified Lambda
function.

This action requires permission for the C<lambda:GetPolicy action.>


=head2 Invoke

=over

=item FunctionName => Str

=item [ClientContext => Str]

=item [InvocationType => Str]

=item [LogType => Str]

=item [Payload => Str]

=item [Qualifier => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::Invoke>

Returns: a L<Paws::Lambda::InvocationResponse> instance

Invokes a Lambda function. For an example, see Create the Lambda
Function and Test It Manually
(http://docs.aws.amazon.com/lambda/latest/dg/with-dynamodb-create-function.html#with-dbb-invoke-manually).

Specify just a function name to invoke the latest version of the
function. To invoke a published version, use the C<Qualifier> parameter
to specify a version or alias
(http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).

If you use the C<RequestResponse> (synchronous) invocation option, the
function will be invoked only once. If you use the C<Event>
(asynchronous) invocation option, the function will be invoked at least
once in response to an event and the function must be idempotent to
handle this.

For functions with a long timeout, your client may be disconnected
during synchronous invocation while it waits for a response. Configure
your HTTP client, SDK, firewall, proxy, or operating system to allow
for long connections with timeout or keep-alive settings.

This operation requires permission for the C<lambda:InvokeFunction>
action.

The C<TooManyRequestsException> noted below will return the following:
C<ConcurrentInvocationLimitExceeded> will be returned if you have no
functions with reserved concurrency and have exceeded your account
concurrent limit or if a function without reserved concurrency exceeds
the account's unreserved concurrency limit.
C<ReservedFunctionConcurrentInvocationLimitExceeded> will be returned
when a function with reserved concurrency exceeds its configured
concurrency limit.


=head2 InvokeAsync

=over

=item FunctionName => Str

=item InvokeArgs => Str


=back

Each argument is described in detail in: L<Paws::Lambda::InvokeAsync>

Returns: a L<Paws::Lambda::InvokeAsyncResponse> instance

For asynchronous function invocation, use Invoke.

Submits an invocation request to AWS Lambda. Upon receiving the
request, Lambda executes the specified function asynchronously. To see
the logs generated by the Lambda function execution, see the CloudWatch
Logs console.

This operation requires permission for the C<lambda:InvokeFunction>
action.


=head2 ListAliases

=over

=item FunctionName => Str

=item [FunctionVersion => Str]

=item [Marker => Str]

=item [MaxItems => Int]


=back

Each argument is described in detail in: L<Paws::Lambda::ListAliases>

Returns: a L<Paws::Lambda::ListAliasesResponse> instance

Returns list of aliases created for a Lambda function. For each alias,
the response includes information such as the alias ARN, description,
alias name, and the function version to which it points. For more
information, see Introduction to AWS Lambda Aliases
(http://docs.aws.amazon.com/lambda/latest/dg/aliases-intro.html).

This requires permission for the lambda:ListAliases action.


=head2 ListEventSourceMappings

=over

=item [EventSourceArn => Str]

=item [FunctionName => Str]

=item [Marker => Str]

=item [MaxItems => Int]


=back

Each argument is described in detail in: L<Paws::Lambda::ListEventSourceMappings>

Returns: a L<Paws::Lambda::ListEventSourceMappingsResponse> instance

Lists event source mappings. Specify an C<EventSourceArn> to only show
event source mappings for a single event source.


=head2 ListFunctions

=over

=item [FunctionVersion => Str]

=item [Marker => Str]

=item [MasterRegion => Str]

=item [MaxItems => Int]


=back

Each argument is described in detail in: L<Paws::Lambda::ListFunctions>

Returns: a L<Paws::Lambda::ListFunctionsResponse> instance

Returns a list of your Lambda functions. For each function, the
response includes the function configuration information. You must use
GetFunction to retrieve the code for your function.

This operation requires permission for the C<lambda:ListFunctions>
action.

If you are using the versioning feature, you can list all of your
functions or only C<$LATEST> versions. For information about the
versioning feature, see AWS Lambda Function Versioning and Aliases
(http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).


=head2 ListLayers

=over

=item [CompatibleRuntime => Str]

=item [Marker => Str]

=item [MaxItems => Int]


=back

Each argument is described in detail in: L<Paws::Lambda::ListLayers>

Returns: a L<Paws::Lambda::ListLayersResponse> instance

Lists function layers and shows information about the latest version of
each. Specify a runtime identifier
(http://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html) to
list only layers that indicate that they're compatible with that
runtime.


=head2 ListLayerVersions

=over

=item LayerName => Str

=item [CompatibleRuntime => Str]

=item [Marker => Str]

=item [MaxItems => Int]


=back

Each argument is described in detail in: L<Paws::Lambda::ListLayerVersions>

Returns: a L<Paws::Lambda::ListLayerVersionsResponse> instance

Lists the versions of a function layer. Versions that have been deleted
aren't listed. Specify a runtime identifier
(http://docs.aws.amazon.com/lambda/latest/dg/lambda-runtimes.html) to
list only versions that indicate that they're compatible with that
runtime.


=head2 ListTags

=over

=item Resource => Str


=back

Each argument is described in detail in: L<Paws::Lambda::ListTags>

Returns: a L<Paws::Lambda::ListTagsResponse> instance

Returns a list of tags assigned to a function when supplied the
function ARN (Amazon Resource Name). For more information on Tagging,
see Tagging Lambda Functions
(http://docs.aws.amazon.com/lambda/latest/dg/tagging.html) in the B<AWS
Lambda Developer Guide>.


=head2 ListVersionsByFunction

=over

=item FunctionName => Str

=item [Marker => Str]

=item [MaxItems => Int]


=back

Each argument is described in detail in: L<Paws::Lambda::ListVersionsByFunction>

Returns: a L<Paws::Lambda::ListVersionsByFunctionResponse> instance

Lists all versions of a function. For information about versioning, see
AWS Lambda Function Versioning and Aliases
(http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).


=head2 PublishLayerVersion

=over

=item Content => L<Paws::Lambda::LayerVersionContentInput>

=item LayerName => Str

=item [CompatibleRuntimes => ArrayRef[Str|Undef]]

=item [Description => Str]

=item [LicenseInfo => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::PublishLayerVersion>

Returns: a L<Paws::Lambda::PublishLayerVersionResponse> instance

Creates a function layer from a ZIP archive. Each time you call
C<PublishLayerVersion> with the same version name, a new version is
created.

Add layers to your function with CreateFunction or
UpdateFunctionConfiguration.


=head2 PublishVersion

=over

=item FunctionName => Str

=item [CodeSha256 => Str]

=item [Description => Str]

=item [RevisionId => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::PublishVersion>

Returns: a L<Paws::Lambda::FunctionConfiguration> instance

Publishes a version of your function from the current snapshot of
$LATEST. That is, AWS Lambda takes a snapshot of the function code and
configuration information from $LATEST and publishes a new version. The
code and configuration cannot be modified after publication. For
information about the versioning feature, see AWS Lambda Function
Versioning and Aliases
(http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).


=head2 PutFunctionConcurrency

=over

=item FunctionName => Str

=item ReservedConcurrentExecutions => Int


=back

Each argument is described in detail in: L<Paws::Lambda::PutFunctionConcurrency>

Returns: a L<Paws::Lambda::Concurrency> instance

Sets a limit on the number of concurrent executions available to this
function. It is a subset of your account's total concurrent execution
limit per region. Note that Lambda automatically reserves a buffer of
100 concurrent executions for functions without any reserved
concurrency limit. This means if your account limit is 1000, you have a
total of 900 available to allocate to individual functions. For more
information, see Managing Concurrency
(http://docs.aws.amazon.com/lambda/latest/dg/concurrent-executions.html).


=head2 RemoveLayerVersionPermission

=over

=item LayerName => Str

=item StatementId => Str

=item VersionNumber => Int

=item [RevisionId => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::RemoveLayerVersionPermission>

Returns: nothing

Removes a statement from the permissions policy for a layer version.
For more information, see AddLayerVersionPermission.


=head2 RemovePermission

=over

=item FunctionName => Str

=item StatementId => Str

=item [Qualifier => Str]

=item [RevisionId => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::RemovePermission>

Returns: nothing

Removes permissions from a function. You can remove individual
permissions from an resource policy associated with a Lambda function
by providing a statement ID that you provided when you added the
permission. When you remove permissions, disable the event source
mapping or trigger configuration first to avoid errors.

Permissions apply to the Amazon Resource Name (ARN) used to invoke the
function, which can be unqualified (the unpublished version of the
function), or include a version or alias. If a client uses a version or
alias to invoke a function, use the C<Qualifier> parameter to apply
permissions to that ARN. For more information about versioning, see AWS
Lambda Function Versioning and Aliases
(http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).

You need permission for the C<lambda:RemovePermission> action.


=head2 TagResource

=over

=item Resource => Str

=item Tags => L<Paws::Lambda::Tags>


=back

Each argument is described in detail in: L<Paws::Lambda::TagResource>

Returns: nothing

Creates a list of tags (key-value pairs) on the Lambda function.
Requires the Lambda function ARN (Amazon Resource Name). If a key is
specified without a value, Lambda creates a tag with the specified key
and a value of null. For more information, see Tagging Lambda Functions
(http://docs.aws.amazon.com/lambda/latest/dg/tagging.html) in the B<AWS
Lambda Developer Guide>.


=head2 UntagResource

=over

=item Resource => Str

=item TagKeys => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Lambda::UntagResource>

Returns: nothing

Removes tags from a Lambda function. Requires the function ARN (Amazon
Resource Name). For more information, see Tagging Lambda Functions
(http://docs.aws.amazon.com/lambda/latest/dg/tagging.html) in the B<AWS
Lambda Developer Guide>.


=head2 UpdateAlias

=over

=item FunctionName => Str

=item Name => Str

=item [Description => Str]

=item [FunctionVersion => Str]

=item [RevisionId => Str]

=item [RoutingConfig => L<Paws::Lambda::AliasRoutingConfiguration>]


=back

Each argument is described in detail in: L<Paws::Lambda::UpdateAlias>

Returns: a L<Paws::Lambda::AliasConfiguration> instance

Using this API you can update the function version to which the alias
points and the alias description. For more information, see
Introduction to AWS Lambda Aliases
(http://docs.aws.amazon.com/lambda/latest/dg/aliases-intro.html).

This requires permission for the lambda:UpdateAlias action.


=head2 UpdateEventSourceMapping

=over

=item UUID => Str

=item [BatchSize => Int]

=item [Enabled => Bool]

=item [FunctionName => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::UpdateEventSourceMapping>

Returns: a L<Paws::Lambda::EventSourceMappingConfiguration> instance

Updates an event source mapping. You can change the function that AWS
Lambda invokes, or pause invocation and resume later from the same
location.


=head2 UpdateFunctionCode

=over

=item FunctionName => Str

=item [DryRun => Bool]

=item [Publish => Bool]

=item [RevisionId => Str]

=item [S3Bucket => Str]

=item [S3Key => Str]

=item [S3ObjectVersion => Str]

=item [ZipFile => Str]


=back

Each argument is described in detail in: L<Paws::Lambda::UpdateFunctionCode>

Returns: a L<Paws::Lambda::FunctionConfiguration> instance

Updates the code for the specified Lambda function. This operation must
only be used on an existing Lambda function and cannot be used to
update the function configuration.

If you are using the versioning feature, note this API will always
update the $LATEST version of your Lambda function. For information
about the versioning feature, see AWS Lambda Function Versioning and
Aliases
(http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).

This operation requires permission for the C<lambda:UpdateFunctionCode>
action.


=head2 UpdateFunctionConfiguration

=over

=item FunctionName => Str

=item [DeadLetterConfig => L<Paws::Lambda::DeadLetterConfig>]

=item [Description => Str]

=item [Environment => L<Paws::Lambda::Environment>]

=item [Handler => Str]

=item [KMSKeyArn => Str]

=item [Layers => ArrayRef[Str|Undef]]

=item [MemorySize => Int]

=item [RevisionId => Str]

=item [Role => Str]

=item [Runtime => Str]

=item [Timeout => Int]

=item [TracingConfig => L<Paws::Lambda::TracingConfig>]

=item [VpcConfig => L<Paws::Lambda::VpcConfig>]


=back

Each argument is described in detail in: L<Paws::Lambda::UpdateFunctionConfiguration>

Returns: a L<Paws::Lambda::FunctionConfiguration> instance

Updates the configuration parameters for the specified Lambda function
by using the values provided in the request. You provide only the
parameters you want to change. This operation must only be used on an
existing Lambda function and cannot be used to update the function's
code.

If you are using the versioning feature, note this API will always
update the $LATEST version of your Lambda function. For information
about the versioning feature, see AWS Lambda Function Versioning and
Aliases
(http://docs.aws.amazon.com/lambda/latest/dg/versioning-aliases.html).

This operation requires permission for the
C<lambda:UpdateFunctionConfiguration> action.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAliases(sub { },FunctionName => Str, [FunctionVersion => Str, Marker => Str, MaxItems => Int])

=head2 ListAllAliases(FunctionName => Str, [FunctionVersion => Str, Marker => Str, MaxItems => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Aliases, passing the object as the first parameter, and the string 'Aliases' as the second parameter 

If not, it will return a a L<Paws::Lambda::ListAliasesResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllEventSourceMappings(sub { },[EventSourceArn => Str, FunctionName => Str, Marker => Str, MaxItems => Int])

=head2 ListAllEventSourceMappings([EventSourceArn => Str, FunctionName => Str, Marker => Str, MaxItems => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - EventSourceMappings, passing the object as the first parameter, and the string 'EventSourceMappings' as the second parameter 

If not, it will return a a L<Paws::Lambda::ListEventSourceMappingsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllFunctions(sub { },[FunctionVersion => Str, Marker => Str, MasterRegion => Str, MaxItems => Int])

=head2 ListAllFunctions([FunctionVersion => Str, Marker => Str, MasterRegion => Str, MaxItems => Int])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Functions, passing the object as the first parameter, and the string 'Functions' as the second parameter 

If not, it will return a a L<Paws::Lambda::ListFunctionsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

