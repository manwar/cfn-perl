use Moose::Util::TypeConstraints;

coerce 'Cfn::Resource::Properties::AWS::EC2::CustomerGateway',
  from 'HashRef',
   via { Cfn::Resource::Properties::AWS::EC2::CustomerGateway->new( %$_ ) };

package Cfn::Resource::AWS::EC2::CustomerGateway {
   use Moose;
  extends 'Cfn::Resource';
  has Properties => (isa => 'Cfn::Resource::Properties::AWS::EC2::CustomerGateway', is => 'rw', coerce => 1, required => 1);
}

package Cfn::Resource::Properties::AWS::EC2::CustomerGateway  {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Resource::Properties';
  has BgpAsn => (isa => 'Cfn::Value', is => 'rw', coerce => 1, required => 1);
  has IpAddress => (isa => 'Cfn::Value', is => 'rw', coerce => 1, required => 1);
  has Type => (isa => 'Cfn::Value', is => 'rw', coerce => 1, required => 1);
  has Tags => (isa => 'Cfn::Value::Array|Cfn::Value::Function', is => 'rw', coerce => 1);
}

1;