(ns cdisc-library-api.specs.export-qrs-csv-items-row
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def export-qrs-csv-items-row-data
  {
   (ds/opt :QRSMeasureName) string?
   (ds/opt :QRSMeasureLabel) string?
   (ds/opt :QRSMeasureType) string?
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

(def export-qrs-csv-items-row-spec
  (ds/spec
    {:name ::export-qrs-csv-items-row
     :spec export-qrs-csv-items-row-data}))
