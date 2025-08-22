(ns cdisc-library-api.specs.sendig-dataset-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def sendig-dataset-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def sendig-dataset-ref-spec
  (ds/spec
    {:name ::sendig-dataset-ref
     :spec sendig-dataset-ref-data}))
