-module(openapi_sdtm_dataset_variables).

-export([encode/1]).

-export_type([openapi_sdtm_dataset_variables/0]).

-type openapi_sdtm_dataset_variables() ::
    #{ 'ordinal' => binary(),
       'name' => binary(),
       'label' => binary(),
       'description' => binary(),
       'datasetStructure' => binary(),
       '_links' => openapi_sdtm_dataset_variables_links:openapi_sdtm_dataset_variables_links()
     }.

encode(#{ 'ordinal' := Ordinal,
          'name' := Name,
          'label' := Label,
          'description' := Description,
          'datasetStructure' := DatasetStructure,
          '_links' := Links
        }) ->
    #{ 'ordinal' => Ordinal,
       'name' => Name,
       'label' => Label,
       'description' => Description,
       'datasetStructure' => DatasetStructure,
       '_links' => Links
     }.
