-module(openapi_sdtm_class_variable).

-export([encode/1]).

-export_type([openapi_sdtm_class_variable/0]).

-type openapi_sdtm_class_variable() ::
    #{ 'ordinal' => binary(),
       'name' => binary(),
       'label' => binary(),
       'description' => binary(),
       'role' => binary(),
       'roleDescription' => binary(),
       'simpleDatatype' => binary(),
       'describedValueDomain' => binary(),
       '_links' => openapi_sdtm_class_variable_links:openapi_sdtm_class_variable_links()
     }.

encode(#{ 'ordinal' := Ordinal,
          'name' := Name,
          'label' := Label,
          'description' := Description,
          'role' := Role,
          'roleDescription' := RoleDescription,
          'simpleDatatype' := SimpleDatatype,
          'describedValueDomain' := DescribedValueDomain,
          '_links' := Links
        }) ->
    #{ 'ordinal' => Ordinal,
       'name' => Name,
       'label' => Label,
       'description' => Description,
       'role' => Role,
       'roleDescription' => RoleDescription,
       'simpleDatatype' => SimpleDatatype,
       'describedValueDomain' => DescribedValueDomain,
       '_links' => Links
     }.
