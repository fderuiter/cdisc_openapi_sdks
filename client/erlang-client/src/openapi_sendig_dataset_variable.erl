-module(openapi_sendig_dataset_variable).

-export([encode/1]).

-export_type([openapi_sendig_dataset_variable/0]).

-type openapi_sendig_dataset_variable() ::
    #{ 'ordinal' => binary(),
       'name' => binary(),
       'label' => binary(),
       'description' => binary(),
       'role' => binary(),
       'simpleDatatype' => binary(),
       'core' => binary(),
       'describedValueDomain' => binary(),
       'valueList' => list(),
       '_links' => openapi_sendig_dataset_variable_links:openapi_sendig_dataset_variable_links()
     }.

encode(#{ 'ordinal' := Ordinal,
          'name' := Name,
          'label' := Label,
          'description' := Description,
          'role' := Role,
          'simpleDatatype' := SimpleDatatype,
          'core' := Core,
          'describedValueDomain' := DescribedValueDomain,
          'valueList' := ValueList,
          '_links' := Links
        }) ->
    #{ 'ordinal' => Ordinal,
       'name' => Name,
       'label' => Label,
       'description' => Description,
       'role' => Role,
       'simpleDatatype' => SimpleDatatype,
       'core' => Core,
       'describedValueDomain' => DescribedValueDomain,
       'valueList' => ValueList,
       '_links' => Links
     }.
