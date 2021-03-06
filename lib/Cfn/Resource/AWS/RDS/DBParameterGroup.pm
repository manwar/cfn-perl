# AWS::RDS::DBParameterGroup generated from spec 1.11.0
use Moose::Util::TypeConstraints;

coerce 'Cfn::Resource::Properties::AWS::RDS::DBParameterGroup',
  from 'HashRef',
   via { Cfn::Resource::Properties::AWS::RDS::DBParameterGroup->new( %$_ ) };

package Cfn::Resource::AWS::RDS::DBParameterGroup {
  use Moose;
  extends 'Cfn::Resource';
  has Properties => (isa => 'Cfn::Resource::Properties::AWS::RDS::DBParameterGroup', is => 'rw', coerce => 1);
  sub _build_attributes {
    [  ]
  }
}



package Cfn::Resource::Properties::AWS::RDS::DBParameterGroup {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Resource::Properties';
  
  has Description => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Family => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Parameters => (isa => 'Cfn::Value::Hash', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Tags => (isa => 'ArrayOfCfn::Resource::Properties::TagType', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

1;
