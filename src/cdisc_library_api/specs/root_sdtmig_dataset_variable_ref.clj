(ns cdisc-library-api.specs.root-sdtmig-dataset-variable-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def root-sdtmig-dataset-variable-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def root-sdtmig-dataset-variable-ref-spec
  (ds/spec
    {:name ::root-sdtmig-dataset-variable-ref
     :spec root-sdtmig-dataset-variable-ref-data}))
