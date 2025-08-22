(ns cdisc-library-api.specs.export-sendig-variables-row
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def export-sendig-variables-row-data
  {
   (ds/opt :Version) string?
   (ds/opt :VariableOrder) string?
   (ds/opt :Class) string?
   (ds/opt :DatasetName) string?
   (ds/opt :VariableName) string?
   (ds/opt :VariableLabel) string?
   (ds/opt :Type) string?
   (ds/opt :ControlledTermsCodelistorFormat) string?
   (ds/opt :Role) string?
   (ds/opt :CDISCNotes) string?
   (ds/opt :Core) string?
   })

(def export-sendig-variables-row-spec
  (ds/spec
    {:name ::export-sendig-variables-row
     :spec export-sendig-variables-row-data}))
