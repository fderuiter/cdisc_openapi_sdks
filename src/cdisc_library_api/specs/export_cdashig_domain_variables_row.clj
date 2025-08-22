(ns cdisc-library-api.specs.export-cdashig-domain-variables-row
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def export-cdashig-domain-variables-row-data
  {
   (ds/opt :Version) string?
   (ds/opt :Class) string?
   (ds/opt :Domain) string?
   (ds/opt :DataCollectionScenario) string?
   (ds/opt :VariableOrder) string?
   (ds/opt :CDASHIGVariable) string?
   (ds/opt :CDASHIGVariableLabel) string?
   (ds/opt :DRAFTCDASHIGDefinition) string?
   (ds/opt :QuestionText) string?
   (ds/opt :Prompt) string?
   (ds/opt :Type) string?
   (ds/opt :CDASHIGCore) string?
   (ds/opt :CaseReportFormCompletionInstructions) string?
   (ds/opt :SDTMIGTarget) (s/coll-of string?)
   (ds/opt :MappingInstructions) string?
   (ds/opt :ControlledTerminologyCodelistName) string?
   (ds/opt :ImplementationNotes) string?
   })

(def export-cdashig-domain-variables-row-spec
  (ds/spec
    {:name ::export-cdashig-domain-variables-row
     :spec export-cdashig-domain-variables-row-data}))
