(ns cdisc-library-api.specs.export-sdtmig-variables-row
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def export-sdtmig-variables-row-data
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

(def export-sdtmig-variables-row-spec
  (ds/spec
    {:name ::export-sdtmig-variables-row
     :spec export-sdtmig-variables-row-data}))
