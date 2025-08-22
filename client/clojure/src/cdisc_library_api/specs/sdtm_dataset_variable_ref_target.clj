(ns cdisc-library-api.specs.sdtm-dataset-variable-ref-target
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def sdtm-dataset-variable-ref-target-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def sdtm-dataset-variable-ref-target-spec
  (ds/spec
    {:name ::sdtm-dataset-variable-ref-target
     :spec sdtm-dataset-variable-ref-target-data}))
