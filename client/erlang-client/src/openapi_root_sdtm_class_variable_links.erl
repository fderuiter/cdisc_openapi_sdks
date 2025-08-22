-module(openapi_root_sdtm_class_variable_links).

-export([encode/1]).

-export_type([openapi_root_sdtm_class_variable_links/0]).

-type openapi_root_sdtm_class_variable_links() ::
    #{ 'self' => openapi_root_sdtm_class_variable_ref:openapi_root_sdtm_class_variable_ref(),
       'versions' => list()
     }.

encode(#{ 'self' := Self,
          'versions' := Versions
        }) ->
    #{ 'self' => Self,
       'versions' => Versions
     }.
