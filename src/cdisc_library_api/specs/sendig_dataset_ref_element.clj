(ns cdisc-library-api.specs.sendig-dataset-ref-element
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def sendig-dataset-ref-element-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def sendig-dataset-ref-element-spec
  (ds/spec
    {:name ::sendig-dataset-ref-element
     :spec sendig-dataset-ref-element-data}))
