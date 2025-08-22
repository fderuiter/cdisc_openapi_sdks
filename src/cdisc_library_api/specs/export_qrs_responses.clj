(ns cdisc-library-api.specs.export-qrs-responses
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def export-qrs-responses-data
  {
   (ds/opt :ResponseGroup) string?
   (ds/opt :Sequence) string?
   (ds/opt :ResponsesOriginalResultCodelistC-Code) string?
   (ds/opt :ResponsesOriginalResultTermC-Code) string?
   (ds/opt :ResponsesOriginalResultUnitCodelistC-Code) string?
   (ds/opt :ResponsesOriginalResultUnitTermC-Code) string?
   (ds/opt :ResponsesStandardizedResultCodelistC-Code) string?
   (ds/opt :ResponsesStandardizedResultTermC-Code) string?
   (ds/opt :ResponsesStandardizedResultUnitCodelistC-Code) string?
   (ds/opt :ResponsesStandardizedResultUnitTermC-Code) string?
   })

(def export-qrs-responses-spec
  (ds/spec
    {:name ::export-qrs-responses
     :spec export-qrs-responses-data}))
