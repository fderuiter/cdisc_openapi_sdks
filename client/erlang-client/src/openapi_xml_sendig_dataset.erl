-module(openapi_xml_sendig_dataset).

-export([encode/1]).

-export_type([openapi_xml_sendig_dataset/0]).

-type openapi_xml_sendig_dataset() ::
    #{ 'self' => openapi_sendig_dataset:openapi_sendig_dataset()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
