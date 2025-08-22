-module(openapi_adam_variable).

-export([encode/1]).

-export_type([openapi_adam_variable/0]).

-type openapi_adam_variable() ::
    #{ 'ordinal' => binary(),
       'name' => binary(),
       'label' => binary(),
       'description' => binary(),
       'core' => binary(),
       'simpleDatatype' => binary(),
       'describedValueDomain' => binary(),
       'valueList' => list(),
       '_links' => openapi_adam_variable_links:openapi_adam_variable_links()
     }.

encode(#{ 'ordinal' := Ordinal,
          'name' := Name,
          'label' := Label,
          'description' := Description,
          'core' := Core,
          'simpleDatatype' := SimpleDatatype,
          'describedValueDomain' := DescribedValueDomain,
          'valueList' := ValueList,
          '_links' := Links
        }) ->
    #{ 'ordinal' => Ordinal,
       'name' => Name,
       'label' => Label,
       'description' => Description,
       'core' => Core,
       'simpleDatatype' => SimpleDatatype,
       'describedValueDomain' => DescribedValueDomain,
       'valueList' => ValueList,
       '_links' => Links
     }.
