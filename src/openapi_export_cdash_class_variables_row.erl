-module(openapi_export_cdash_class_variables_row).

-export([encode/1]).

-export_type([openapi_export_cdash_class_variables_row/0]).

-type openapi_export_cdash_class_variables_row() ::
    #{ 'Version' => binary(),
       'Class' => binary(),
       'Domain' => binary(),
       'Variable_Order' => binary(),
       'CDASH_Variable' => binary(),
       'CDASH_Variable_Label' => binary(),
       'DRAFT_CDASH_Definition' => binary(),
       'Domain_Specific' => binary(),
       'Question_Text' => binary(),
       'Prompt' => binary(),
       'Type' => binary(),
       'SDTM_Target' => list(),
       'Mapping_Instructions' => binary(),
       'Controlled_Terminology_Codelist_Name' => binary(),
       'Implementation_Notes' => binary()
     }.

encode(#{ 'Version' := Version,
          'Class' := Class,
          'Domain' := Domain,
          'Variable_Order' := VariableOrder,
          'CDASH_Variable' := CDASHVariable,
          'CDASH_Variable_Label' := CDASHVariableLabel,
          'DRAFT_CDASH_Definition' := DRAFTCDASHDefinition,
          'Domain_Specific' := DomainSpecific,
          'Question_Text' := QuestionText,
          'Prompt' := Prompt,
          'Type' := Type,
          'SDTM_Target' := SDTMTarget,
          'Mapping_Instructions' := MappingInstructions,
          'Controlled_Terminology_Codelist_Name' := ControlledTerminologyCodelistName,
          'Implementation_Notes' := ImplementationNotes
        }) ->
    #{ 'Version' => Version,
       'Class' => Class,
       'Domain' => Domain,
       'Variable Order' => VariableOrder,
       'CDASH Variable' => CDASHVariable,
       'CDASH Variable Label' => CDASHVariableLabel,
       'DRAFT CDASH Definition' => DRAFTCDASHDefinition,
       'Domain Specific' => DomainSpecific,
       'Question Text' => QuestionText,
       'Prompt' => Prompt,
       'Type' => Type,
       'SDTM Target' => SDTMTarget,
       'Mapping Instructions' => MappingInstructions,
       'Controlled Terminology Codelist Name' => ControlledTerminologyCodelistName,
       'Implementation Notes' => ImplementationNotes
     }.
