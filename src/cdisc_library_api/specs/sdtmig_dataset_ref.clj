(ns cdisc-library-api.specs.sdtmig-dataset-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def sdtmig-dataset-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def sdtmig-dataset-ref-spec
  (ds/spec
    {:name ::sdtmig-dataset-ref
     :spec sdtmig-dataset-ref-data}))
