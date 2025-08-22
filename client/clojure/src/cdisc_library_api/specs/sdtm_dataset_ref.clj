(ns cdisc-library-api.specs.sdtm-dataset-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def sdtm-dataset-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def sdtm-dataset-ref-spec
  (ds/spec
    {:name ::sdtm-dataset-ref
     :spec sdtm-dataset-ref-data}))
