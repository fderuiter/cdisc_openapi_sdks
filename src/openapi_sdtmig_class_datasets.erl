-module(openapi_sdtmig_class_datasets).

-export([encode/1]).

-export_type([openapi_sdtmig_class_datasets/0]).

-type openapi_sdtmig_class_datasets() ::
    #{ 'ordinal' => binary(),
       'name' => binary(),
       'label' => binary(),
       'description' => binary(),
       '_links' => openapi_sdtmig_class_datasets_links:openapi_sdtmig_class_datasets_links()
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
