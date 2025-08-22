-module(openapi_cdash_domain_field).

-export([encode/1]).

-export_type([openapi_cdash_domain_field/0]).

-type openapi_cdash_domain_field() ::
    #{ 'ordinal' => binary(),
       'name' => binary(),
       'label' => binary(),
       'definition' => binary(),
       'domainSpecific' => binary(),
       'questionText' => binary(),
       'prompt' => binary(),
       'simpleDatatype' => binary(),
       'implementationNotes' => binary(),
       'mappingInstructions' => binary(),
       '_links' => openapi_cdash_domain_field_links:openapi_cdash_domain_field_links()
     }.

encode(#{ 'ordinal' := Ordinal,
          'name' := Name,
          'label' := Label,
          'definition' := Definition,
          'domainSpecific' := DomainSpecific,
          'questionText' := QuestionText,
          'prompt' := Prompt,
          'simpleDatatype' := SimpleDatatype,
          'implementationNotes' := ImplementationNotes,
          'mappingInstructions' := MappingInstructions,
          '_links' := Links
        }) ->
    #{ 'ordinal' => Ordinal,
       'name' => Name,
       'label' => Label,
       'definition' => Definition,
       'domainSpecific' => DomainSpecific,
       'questionText' => QuestionText,
       'prompt' => Prompt,
       'simpleDatatype' => SimpleDatatype,
       'implementationNotes' => ImplementationNotes,
       'mappingInstructions' => MappingInstructions,
       '_links' => Links
     }.
