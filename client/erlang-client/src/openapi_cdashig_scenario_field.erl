-module(openapi_cdashig_scenario_field).

-export([encode/1]).

-export_type([openapi_cdashig_scenario_field/0]).

-type openapi_cdashig_scenario_field() ::
    #{ 'ordinal' => binary(),
       'name' => binary(),
       'label' => binary(),
       'definition' => binary(),
       'questionText' => binary(),
       'prompt' => binary(),
       'completionInstructions' => binary(),
       'implementationNotes' => binary(),
       'simpleDatatype' => binary(),
       'mappingInstructions' => binary(),
       'core' => binary(),
       '_links' => openapi_cdashig_scenario_field_links:openapi_cdashig_scenario_field_links()
     }.

encode(#{ 'ordinal' := Ordinal,
          'name' := Name,
          'label' := Label,
          'definition' := Definition,
          'questionText' := QuestionText,
          'prompt' := Prompt,
          'completionInstructions' := CompletionInstructions,
          'implementationNotes' := ImplementationNotes,
          'simpleDatatype' := SimpleDatatype,
          'mappingInstructions' := MappingInstructions,
          'core' := Core,
          '_links' := Links
        }) ->
    #{ 'ordinal' => Ordinal,
       'name' => Name,
       'label' => Label,
       'definition' => Definition,
       'questionText' => QuestionText,
       'prompt' => Prompt,
       'completionInstructions' => CompletionInstructions,
       'implementationNotes' => ImplementationNotes,
       'simpleDatatype' => SimpleDatatype,
       'mappingInstructions' => MappingInstructions,
       'core' => Core,
       '_links' => Links
     }.
