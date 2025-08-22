-module(openapi_export_ct_codelist).

-export([encode/1]).

-export_type([openapi_export_ct_codelist/0]).

-type openapi_export_ct_codelist() ::
    #{ 'Code' => binary(),
       'Codelist_Code' => binary(),
       'Codelist_Extensible__Yes_No' => binary(),
       'Codelist_Name' => binary(),
       'CDISC_Submission_Value' => binary(),
       'CDISC_Synonym_s' => list(),
       'CDISC_Definition' => binary(),
       'NCI_Preferred_Term' => binary(),
       'Standard_and_Date' => binary(),
       '' => list()
     }.

encode(#{ 'Code' := Code,
          'Codelist_Code' := CodelistCode,
          'Codelist_Extensible__Yes_No' := CodelistExtensibleYesNo,
          'Codelist_Name' := CodelistName,
          'CDISC_Submission_Value' := CDISCSubmissionValue,
          'CDISC_Synonym_s' := CDISCSynonymS,
          'CDISC_Definition' := CDISCDefinition,
          'NCI_Preferred_Term' := NCIPreferredTerm,
          'Standard_and_Date' := StandardAndDate,
          '' := 
        }) ->
    #{ 'Code' => Code,
       'Codelist Code' => CodelistCode,
       'Codelist Extensible (Yes/No)' => CodelistExtensibleYesNo,
       'Codelist Name' => CodelistName,
       'CDISC Submission Value' => CDISCSubmissionValue,
       'CDISC Synonym(s)' => CDISCSynonymS,
       'CDISC Definition' => CDISCDefinition,
       'NCI Preferred Term' => NCIPreferredTerm,
       'Standard and Date' => StandardAndDate,
       '' => 
     }.
