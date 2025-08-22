(ns cdisc-library-api.specs.sdtmig-dataset-variable-ref-version
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def sdtmig-dataset-variable-ref-version-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def sdtmig-dataset-variable-ref-version-spec
  (ds/spec
    {:name ::sdtmig-dataset-variable-ref-version
     :spec sdtmig-dataset-variable-ref-version-data}))
