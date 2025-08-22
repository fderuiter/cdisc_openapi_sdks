(ns cdisc-library-api.specs.sdtm-dataset-ref-element
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def sdtm-dataset-ref-element-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def sdtm-dataset-ref-element-spec
  (ds/spec
    {:name ::sdtm-dataset-ref-element
     :spec sdtm-dataset-ref-element-data}))
