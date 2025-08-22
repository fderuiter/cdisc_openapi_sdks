-module(openapi_xml_sdtmig_class_datasets).

-export([encode/1]).

-export_type([openapi_xml_sdtmig_class_datasets/0]).

-type openapi_xml_sdtmig_class_datasets() ::
    #{ 'self' => openapi_sdtmig_class_datasets:openapi_sdtmig_class_datasets()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
