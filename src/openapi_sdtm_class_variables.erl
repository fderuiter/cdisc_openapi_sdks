-module(openapi_sdtm_class_variables).

-export([encode/1]).

-export_type([openapi_sdtm_class_variables/0]).

-type openapi_sdtm_class_variables() ::
    #{ 'ordinal' => binary(),
       'name' => binary(),
       'label' => binary(),
       'description' => binary(),
       '_links' => openapi_sdtm_class_variables_links:openapi_sdtm_class_variables_links()
     }.

encode(#{ 'ordinal' := Ordinal,
          'name' := Name,
          'label' := Label,
          'description' := Description,
          '_links' := Links
        }) ->
    #{ 'ordinal' => Ordinal,
       'name' => Name,
       'label' => Label,
       'description' => Description,
       '_links' => Links
     }.
