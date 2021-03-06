# AWS::OpsWorks::Layer generated from spec 2.15.0
use Moose::Util::TypeConstraints;

coerce 'Cfn::Resource::Properties::AWS::OpsWorks::Layer',
  from 'HashRef',
   via { Cfn::Resource::Properties::AWS::OpsWorks::Layer->new( %$_ ) };

package Cfn::Resource::AWS::OpsWorks::Layer {
  use Moose;
  extends 'Cfn::Resource';
  has Properties => (isa => 'Cfn::Resource::Properties::AWS::OpsWorks::Layer', is => 'rw', coerce => 1);
  sub _build_attributes {
    [  ]
  }
}



subtype 'Cfn::Resource::Properties::AWS::OpsWorks::Layer::ShutdownEventConfiguration',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::OpsWorks::Layer::ShutdownEventConfiguration',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::OpsWorks::Layer::ShutdownEventConfigurationValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::OpsWorks::Layer::ShutdownEventConfigurationValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has DelayUntilElbConnectionsDrained => (isa => 'Cfn::Value::Boolean', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ExecutionTimeout => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::OpsWorks::Layer::AutoScalingThresholds',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::OpsWorks::Layer::AutoScalingThresholds',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::OpsWorks::Layer::AutoScalingThresholdsValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::OpsWorks::Layer::AutoScalingThresholdsValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has CpuThreshold => (isa => 'Cfn::Value::Double', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has IgnoreMetricsTime => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has InstanceCount => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has LoadThreshold => (isa => 'Cfn::Value::Double', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has MemoryThreshold => (isa => 'Cfn::Value::Double', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ThresholdsWaitTime => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}
subtype 'ArrayOfCfn::Resource::Properties::AWS::OpsWorks::Layer::VolumeConfiguration',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::OpsWorks::Layer::VolumeConfiguration',
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
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::OpsWorks::Layer::VolumeConfiguration')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::OpsWorks::Layer::VolumeConfiguration',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::OpsWorks::Layer::VolumeConfiguration',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::OpsWorks::Layer::VolumeConfigurationValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::OpsWorks::Layer::VolumeConfigurationValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Encrypted => (isa => 'Cfn::Value::Boolean', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Iops => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has MountPoint => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has NumberOfDisks => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RaidLevel => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Size => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has VolumeType => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::OpsWorks::Layer::Recipes',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::OpsWorks::Layer::Recipes',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::OpsWorks::Layer::RecipesValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::OpsWorks::Layer::RecipesValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Configure => (isa => 'Cfn::Value::Array|Cfn::Value::Function', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Deploy => (isa => 'Cfn::Value::Array|Cfn::Value::Function', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Setup => (isa => 'Cfn::Value::Array|Cfn::Value::Function', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Shutdown => (isa => 'Cfn::Value::Array|Cfn::Value::Function', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Undeploy => (isa => 'Cfn::Value::Array|Cfn::Value::Function', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::OpsWorks::Layer::LoadBasedAutoScaling',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::OpsWorks::Layer::LoadBasedAutoScaling',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::OpsWorks::Layer::LoadBasedAutoScalingValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::OpsWorks::Layer::LoadBasedAutoScalingValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has DownScaling => (isa => 'Cfn::Resource::Properties::AWS::OpsWorks::Layer::AutoScalingThresholds', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Enable => (isa => 'Cfn::Value::Boolean', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has UpScaling => (isa => 'Cfn::Resource::Properties::AWS::OpsWorks::Layer::AutoScalingThresholds', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::OpsWorks::Layer::LifecycleEventConfiguration',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::OpsWorks::Layer::LifecycleEventConfiguration',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::OpsWorks::Layer::LifecycleEventConfigurationValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::OpsWorks::Layer::LifecycleEventConfigurationValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has ShutdownEventConfiguration => (isa => 'Cfn::Resource::Properties::AWS::OpsWorks::Layer::ShutdownEventConfiguration', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

package Cfn::Resource::Properties::AWS::OpsWorks::Layer {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Resource::Properties';
  
  has Attributes => (isa => 'Cfn::Value::Hash', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has AutoAssignElasticIps => (isa => 'Cfn::Value::Boolean', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has AutoAssignPublicIps => (isa => 'Cfn::Value::Boolean', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has CustomInstanceProfileArn => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has CustomJson => (isa => 'Cfn::Value::Json', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has CustomRecipes => (isa => 'Cfn::Resource::Properties::AWS::OpsWorks::Layer::Recipes', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has CustomSecurityGroupIds => (isa => 'Cfn::Value::Array|Cfn::Value::Function', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has EnableAutoHealing => (isa => 'Cfn::Value::Boolean', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has InstallUpdatesOnBoot => (isa => 'Cfn::Value::Boolean', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has LifecycleEventConfiguration => (isa => 'Cfn::Resource::Properties::AWS::OpsWorks::Layer::LifecycleEventConfiguration', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has LoadBasedAutoScaling => (isa => 'Cfn::Resource::Properties::AWS::OpsWorks::Layer::LoadBasedAutoScaling', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Name => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Packages => (isa => 'Cfn::Value::Array|Cfn::Value::Function', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Shortname => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has StackId => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has Tags => (isa => 'ArrayOfCfn::Resource::Properties::TagType', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Type => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has UseEbsOptimizedInstances => (isa => 'Cfn::Value::Boolean', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has VolumeConfigurations => (isa => 'ArrayOfCfn::Resource::Properties::AWS::OpsWorks::Layer::VolumeConfiguration', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

1;
