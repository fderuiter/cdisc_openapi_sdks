-module(openapi_xml_sendig_datasets).

-export([encode/1]).

-export_type([openapi_xml_sendig_datasets/0]).

-type openapi_xml_sendig_datasets() ::
    #{ 'self' => openapi_sendig_datasets:openapi_sendig_datasets()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
