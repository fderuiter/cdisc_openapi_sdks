(ns cdisc-library-api.specs.sdtmig-dataset-variable-ref-target
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def sdtmig-dataset-variable-ref-target-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def sdtmig-dataset-variable-ref-target-spec
  (ds/spec
    {:name ::sdtmig-dataset-variable-ref-target
     :spec sdtmig-dataset-variable-ref-target-data}))
