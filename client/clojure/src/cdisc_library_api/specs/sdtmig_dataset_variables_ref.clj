(ns cdisc-library-api.specs.sdtmig-dataset-variables-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def sdtmig-dataset-variables-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def sdtmig-dataset-variables-ref-spec
  (ds/spec
    {:name ::sdtmig-dataset-variables-ref
     :spec sdtmig-dataset-variables-ref-data}))
