(ns cdisc-library-api.specs.export-qrs-workbook-items-row
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def export-qrs-workbook-items-row-data
  {
   (ds/opt :ItemSequence) string?
   (ds/opt :TestName) string?
   (ds/opt :ItemText) string?
   (ds/opt :TestsCodelistC-Code) string?
   (ds/opt :TestsTermC-Code) string?
   (ds/opt :TestCodesCodelistC-Code) string?
   (ds/opt :TestCodesTermC-Code) string?
   (ds/opt :SubcategorysCodelistC-Code) string?
   (ds/opt :SubcategorysTermC-Code) string?
   (ds/opt :EvaluatorsCodelistC-Code) string?
   (ds/opt :EvaluatorsTermC-Code) string?
   (ds/opt :Free-formResponsesDatatype) string?
   (ds/opt :ResponseGroup) string?
   })

(def export-qrs-workbook-items-row-spec
  (ds/spec
    {:name ::export-qrs-workbook-items-row
     :spec export-qrs-workbook-items-row-data}))
