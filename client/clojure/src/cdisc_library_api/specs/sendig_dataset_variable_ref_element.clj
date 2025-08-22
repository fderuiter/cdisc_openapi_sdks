(ns cdisc-library-api.specs.sendig-dataset-variable-ref-element
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def sendig-dataset-variable-ref-element-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def sendig-dataset-variable-ref-element-spec
  (ds/spec
    {:name ::sendig-dataset-variable-ref-element
     :spec sendig-dataset-variable-ref-element-data}))
