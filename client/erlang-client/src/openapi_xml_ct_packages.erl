-module(openapi_xml_ct_packages).

-export([encode/1]).

-export_type([openapi_xml_ct_packages/0]).

-type openapi_xml_ct_packages() ::
    #{ 'self' => openapi_ct_packages:openapi_ct_packages()
     }.

encode(#{ 'self' := Self
        }) ->
    #{ 'self' => Self
     }.
