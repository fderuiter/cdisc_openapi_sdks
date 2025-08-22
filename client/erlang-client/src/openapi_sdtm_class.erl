-module(openapi_sdtm_class).

-export([encode/1]).

-export_type([openapi_sdtm_class/0]).

-type openapi_sdtm_class() ::
    #{ 'ordinal' => binary(),
       'name' => binary(),
       'label' => binary(),
       'description' => binary(),
       '_links' => openapi_sdtm_class_links:openapi_sdtm_class_links(),
       'classVariables' => list(),
       'datasets' => list()
     }.

encode(#{ 'ordinal' := Ordinal,
          'name' := Name,
          'label' := Label,
          'description' := Description,
          '_links' := Links,
          'classVariables' := ClassVariables,
          'datasets' := Datasets
        }) ->
    #{ 'ordinal' => Ordinal,
       'name' => Name,
       'label' => Label,
       'description' => Description,
       '_links' => Links,
       'classVariables' => ClassVariables,
       'datasets' => Datasets
     }.
