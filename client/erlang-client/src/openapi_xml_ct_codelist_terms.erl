-module(openapi_xml_ct_codelist_terms).

-export([encode/1]).

-export_type([openapi_xml_ct_codelist_terms/0]).

-type openapi_xml_ct_codelist_terms() ::
    #{ 'self' => openapi_ct_codelist_terms:openapi_ct_codelist_terms()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
