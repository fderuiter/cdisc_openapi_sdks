-module(openapi_xml_ct_term).

-export([encode/1]).

-export_type([openapi_xml_ct_term/0]).

-type openapi_xml_ct_term() ::
    #{ 'self' => openapi_ct_term:openapi_ct_term()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
