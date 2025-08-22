-module(openapi_xml_root_ct_term).

-export([encode/1]).

-export_type([openapi_xml_root_ct_term/0]).

-type openapi_xml_root_ct_term() ::
    #{ 'self' => openapi_root_ct_term:openapi_root_ct_term()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
