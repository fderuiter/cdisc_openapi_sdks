-module(openapi_sdtmig_dataset).

-export([encode/1]).

-export_type([openapi_sdtmig_dataset/0]).

-type openapi_sdtmig_dataset() ::
    #{ 'ordinal' => binary(),
       'name' => binary(),
       'label' => binary(),
       'description' => binary(),
       'datasetStructure' => binary(),
       '_links' => openapi_sdtmig_dataset_links:openapi_sdtmig_dataset_links(),
       'datasetVariables' => list()
     }.

encode(#{ 'ordinal' := Ordinal,
          'name' := Name,
          'label' := Label,
          'description' := Description,
          'datasetStructure' := DatasetStructure,
          '_links' := Links,
          'datasetVariables' := DatasetVariables
        }) ->
    #{ 'ordinal' => Ordinal,
       'name' => Name,
       'label' => Label,
       'description' => Description,
       'datasetStructure' => DatasetStructure,
       '_links' => Links,
       'datasetVariables' => DatasetVariables
     }.
