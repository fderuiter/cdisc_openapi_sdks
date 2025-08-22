-module(openapi_cdash_product).

-export([encode/1]).

-export_type([openapi_cdash_product/0]).

-type openapi_cdash_product() ::
    #{ 'name' => binary(),
       'label' => binary(),
       'description' => binary(),
       'source' => binary(),
       'effectiveDate' => binary(),
       'registrationStatus' => binary(),
       'version' => binary(),
       '_links' => openapi_cdash_product_links:openapi_cdash_product_links(),
       'classes' => list(),
       'domains' => list()
     }.

encode(#{ 'name' := Name,
          'label' := Label,
          'description' := Description,
          'source' := Source,
          'effectiveDate' := EffectiveDate,
          'registrationStatus' := RegistrationStatus,
          'version' := Version,
          '_links' := Links,
          'classes' := Classes,
          'domains' := Domains
        }) ->
    #{ 'name' => Name,
       'label' => Label,
       'description' => Description,
       'source' => Source,
       'effectiveDate' => EffectiveDate,
       'registrationStatus' => RegistrationStatus,
       'version' => Version,
       '_links' => Links,
       'classes' => Classes,
       'domains' => Domains
     }.
