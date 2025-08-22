(ns cdisc-library-api.specs.export-qrs-general
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def export-qrs-general-data
  {
   (ds/opt :Name) string?
   (ds/opt :Label) string?
   (ds/opt :EffectiveDate) string?
   (ds/opt :Description) string?
   (ds/opt :Type) string?
   (ds/opt :CategorysCodelistC-Code) string?
   (ds/opt :CategorysTermC-Code) string?
   })

(def export-qrs-general-spec
  (ds/spec
    {:name ::export-qrs-general
     :spec export-qrs-general-data}))
