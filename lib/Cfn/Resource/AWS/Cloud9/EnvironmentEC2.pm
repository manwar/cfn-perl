# AWS::Cloud9::EnvironmentEC2 generated from spec 1.12.0
use Moose::Util::TypeConstraints;

coerce 'Cfn::Resource::Properties::AWS::Cloud9::EnvironmentEC2',
  from 'HashRef',
   via { Cfn::Resource::Properties::AWS::Cloud9::EnvironmentEC2->new( %$_ ) };

package Cfn::Resource::AWS::Cloud9::EnvironmentEC2 {
  use Moose;
  extends 'Cfn::Resource';
  has Properties => (isa => 'Cfn::Resource::Properties::AWS::Cloud9::EnvironmentEC2', is => 'rw', coerce => 1);
  sub _build_attributes {
    [ 'Arn','Name' ]
  }
}


subtype 'ArrayOfCfn::Resource::Properties::AWS::Cloud9::EnvironmentEC2::Repository',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::Cloud9::EnvironmentEC2::Repository',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       die 'Only accepts functions'; 
     }
   },
  from 'ArrayRef',
   via {
     Cfn::Value::Array->new(Value => [
       map { 
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::Cloud9::EnvironmentEC2::Repository')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::Cloud9::EnvironmentEC2::Repository',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::Cloud9::EnvironmentEC2::Repository',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::Cloud9::EnvironmentEC2::RepositoryValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::Cloud9::EnvironmentEC2::RepositoryValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has PathComponent => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RepositoryUrl => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

package Cfn::Resource::Properties::AWS::Cloud9::EnvironmentEC2 {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Resource::Properties';
  
  has AutomaticStopTimeMinutes => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has Description => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has InstanceType => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has Name => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has OwnerArn => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has Repositories => (isa => 'ArrayOfCfn::Resource::Properties::AWS::Cloud9::EnvironmentEC2::Repository', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has SubnetId => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
}

1;
