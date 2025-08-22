(ns cdisc-library-api.specs.root-sdtm-dataset-variable-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def root-sdtm-dataset-variable-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def root-sdtm-dataset-variable-ref-spec
  (ds/spec
    {:name ::root-sdtm-dataset-variable-ref
     :spec root-sdtm-dataset-variable-ref-data}))
