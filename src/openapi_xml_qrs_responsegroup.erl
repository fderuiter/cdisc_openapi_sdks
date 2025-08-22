-module(openapi_xml_qrs_responsegroup).

-export([encode/1]).

-export_type([openapi_xml_qrs_responsegroup/0]).

-type openapi_xml_qrs_responsegroup() ::
    #{ 'self' => openapi_qrs_responsegroup:openapi_qrs_responsegroup()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
