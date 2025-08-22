(ns cdisc-library-api.specs.export-cdash-class-variables-row
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def export-cdash-class-variables-row-data
  {
   (ds/opt :Version) string?
   (ds/opt :Class) string?
   (ds/opt :Domain) string?
   (ds/opt :VariableOrder) string?
   (ds/opt :CDASHVariable) string?
   (ds/opt :CDASHVariableLabel) string?
   (ds/opt :DRAFTCDASHDefinition) string?
   (ds/opt :DomainSpecific) string?
   (ds/opt :QuestionText) string?
   (ds/opt :Prompt) string?
   (ds/opt :Type) string?
   (ds/opt :SDTMTarget) (s/coll-of string?)
   (ds/opt :MappingInstructions) string?
   (ds/opt :ControlledTerminologyCodelistName) string?
   (ds/opt :ImplementationNotes) string?
   })

(def export-cdash-class-variables-row-spec
  (ds/spec
    {:name ::export-cdash-class-variables-row
     :spec export-cdash-class-variables-row-data}))
