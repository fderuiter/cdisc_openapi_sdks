-module(openapi_xml_sdtm_class_variables).

-export([encode/1]).

-export_type([openapi_xml_sdtm_class_variables/0]).

-type openapi_xml_sdtm_class_variables() ::
    #{ 'self' => openapi_sdtm_class_variables:openapi_sdtm_class_variables()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
