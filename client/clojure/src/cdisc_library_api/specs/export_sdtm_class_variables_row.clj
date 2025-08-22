(ns cdisc-library-api.specs.export-sdtm-class-variables-row
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def export-sdtm-class-variables-row-data
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
   (ds/opt :RoleDescription) string?
   (ds/opt :Description) string?
   })

(def export-sdtm-class-variables-row-spec
  (ds/spec
    {:name ::export-sdtm-class-variables-row
     :spec export-sdtm-class-variables-row-data}))
