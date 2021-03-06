# AWS::Glue::Job generated from spec 1.11.0
use Moose::Util::TypeConstraints;

coerce 'Cfn::Resource::Properties::AWS::Glue::Job',
  from 'HashRef',
   via { Cfn::Resource::Properties::AWS::Glue::Job->new( %$_ ) };

package Cfn::Resource::AWS::Glue::Job {
  use Moose;
  extends 'Cfn::Resource';
  has Properties => (isa => 'Cfn::Resource::Properties::AWS::Glue::Job', is => 'rw', coerce => 1);
  sub _build_attributes {
    [  ]
  }
}



subtype 'Cfn::Resource::Properties::AWS::Glue::Job::JobCommand',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::Glue::Job::JobCommand',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::Glue::Job::JobCommandValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::Glue::Job::JobCommandValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Name => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ScriptLocation => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::Glue::Job::ExecutionProperty',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::Glue::Job::ExecutionProperty',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::Glue::Job::ExecutionPropertyValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::Glue::Job::ExecutionPropertyValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has MaxConcurrentRuns => (isa => 'Cfn::Value::Double', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::Glue::Job::ConnectionsList',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::Glue::Job::ConnectionsList',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::Glue::Job::ConnectionsListValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::Glue::Job::ConnectionsListValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Connections => (isa => 'Cfn::Value::Array|Cfn::Value::Function', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

package Cfn::Resource::Properties::AWS::Glue::Job {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Resource::Properties';
  
  has AllocatedCapacity => (isa => 'Cfn::Value::Double', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Command => (isa => 'Cfn::Resource::Properties::AWS::Glue::Job::JobCommand', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Connections => (isa => 'Cfn::Resource::Properties::AWS::Glue::Job::ConnectionsList', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has DefaultArguments => (isa => 'Cfn::Value::Json', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Description => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ExecutionProperty => (isa => 'Cfn::Resource::Properties::AWS::Glue::Job::ExecutionProperty', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has LogUri => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has MaxRetries => (isa => 'Cfn::Value::Double', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Name => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has Role => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

1;
