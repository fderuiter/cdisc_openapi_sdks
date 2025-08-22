-module(openapi_root_sdtmig_dataset_variable).

-export([encode/1]).

-export_type([openapi_root_sdtmig_dataset_variable/0]).

-type openapi_root_sdtmig_dataset_variable() ::
    #{ '_links' => openapi_root_sdtmig_dataset_variable_links:openapi_root_sdtmig_dataset_variable_links()
     }.

encode(#{ '_links' := Links
        }) ->
    #{ '_links' => Links
     }.
