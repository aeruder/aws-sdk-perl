package Paws::API::Builder::query {

  use Data::Printer;
  use Data::Dumper;

  use autodie;

  use Moose;
  extends 'Paws::API::Builder';

  has wrapped_responses => (is => 'ro', lazy => 1, default => sub { $_[0]->api_struct->{ result_wrapped } });

}
1;
