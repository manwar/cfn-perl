# AWS::Glue::Database generated from spec 1.11.0
use Moose::Util::TypeConstraints;

coerce 'Cfn::Resource::Properties::AWS::Glue::Database',
  from 'HashRef',
   via { Cfn::Resource::Properties::AWS::Glue::Database->new( %$_ ) };

package Cfn::Resource::AWS::Glue::Database {
  use Moose;
  extends 'Cfn::Resource';
  has Properties => (isa => 'Cfn::Resource::Properties::AWS::Glue::Database', is => 'rw', coerce => 1);
  sub _build_attributes {
    [  ]
  }
}



subtype 'Cfn::Resource::Properties::AWS::Glue::Database::DatabaseInput',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::Glue::Database::DatabaseInput',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::Glue::Database::DatabaseInputValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::Glue::Database::DatabaseInputValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Description => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has LocationUri => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Name => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has Parameters => (isa => 'Cfn::Value::Json', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

package Cfn::Resource::Properties::AWS::Glue::Database {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Resource::Properties';
  
  has CatalogId => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has DatabaseInput => (isa => 'Cfn::Resource::Properties::AWS::Glue::Database::DatabaseInput', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

1;
