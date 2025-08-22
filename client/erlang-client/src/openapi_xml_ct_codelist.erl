-module(openapi_xml_ct_codelist).

-export([encode/1]).

-export_type([openapi_xml_ct_codelist/0]).

-type openapi_xml_ct_codelist() ::
    #{ 'self' => openapi_ct_codelist:openapi_ct_codelist()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
