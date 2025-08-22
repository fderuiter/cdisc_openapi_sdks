-module(openapi_root_cdash_class_field).

-export([encode/1]).

-export_type([openapi_root_cdash_class_field/0]).

-type openapi_root_cdash_class_field() ::
    #{ '_links' => openapi_root_cdash_class_field_links:openapi_root_cdash_class_field_links()
     }.

encode(#{ '_links' := Links
        }) ->
    #{ '_links' => Links
     }.
