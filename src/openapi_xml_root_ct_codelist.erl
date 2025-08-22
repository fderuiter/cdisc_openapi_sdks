-module(openapi_xml_root_ct_codelist).

-export([encode/1]).

-export_type([openapi_xml_root_ct_codelist/0]).

-type openapi_xml_root_ct_codelist() ::
    #{ 'self' => openapi_root_ct_codelist:openapi_root_ct_codelist()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
