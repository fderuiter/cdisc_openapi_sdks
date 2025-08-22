(ns cdisc-library-api.specs.export-adam-variables-row
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def export-adam-variables-row-data
  {
   (ds/opt :Version) string?
   (ds/opt :DataStructureName) string?
   (ds/opt :DatasetName) string?
   (ds/opt :VariableGroup) string?
   (ds/opt :VariableName) string?
   (ds/opt :VariableLabel) string?
   (ds/opt :Type) string?
   (ds/opt :CodelistControlledTerms) string?
   (ds/opt :Core) string?
   (ds/opt :CDISCNotes) string?
   })

(def export-adam-variables-row-spec
  (ds/spec
    {:name ::export-adam-variables-row
     :spec export-adam-variables-row-data}))
