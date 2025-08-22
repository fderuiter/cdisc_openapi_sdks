-module(openapi_xml_qrs_responsegroups).

-export([encode/1]).

-export_type([openapi_xml_qrs_responsegroups/0]).

-type openapi_xml_qrs_responsegroups() ::
    #{ 'self' => openapi_qrs_responsegroups:openapi_qrs_responsegroups()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
