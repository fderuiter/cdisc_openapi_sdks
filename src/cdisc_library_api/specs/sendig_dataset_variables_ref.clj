(ns cdisc-library-api.specs.sendig-dataset-variables-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def sendig-dataset-variables-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def sendig-dataset-variables-ref-spec
  (ds/spec
    {:name ::sendig-dataset-variables-ref
     :spec sendig-dataset-variables-ref-data}))
