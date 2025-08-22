-module(openapi_about).

-export([encode/1]).

-export_type([openapi_about/0]).

-type openapi_about() ::
    #{ '_links' => openapi_about_links:openapi_about_links(),
       'release_notes' => binary(),
       'api_documentation' => binary()
     }.

encode(#{ '_links' := Links,
          'release_notes' := ReleaseNotes,
          'api_documentation' := ApiDocumentation
        }) ->
    #{ '_links' => Links,
       'release-notes' => ReleaseNotes,
       'api-documentation' => ApiDocumentation
     }.
