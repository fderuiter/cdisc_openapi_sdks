-module(openapi_xml_sdtm_class_datasets).

-export([encode/1]).

-export_type([openapi_xml_sdtm_class_datasets/0]).

-type openapi_xml_sdtm_class_datasets() ::
    #{ 'self' => openapi_sdtm_class_datasets:openapi_sdtm_class_datasets()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
