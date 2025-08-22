(ns cdisc-library-api.specs.sdtm-dataset-variables-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def sdtm-dataset-variables-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def sdtm-dataset-variables-ref-spec
  (ds/spec
    {:name ::sdtm-dataset-variables-ref
     :spec sdtm-dataset-variables-ref-data}))
