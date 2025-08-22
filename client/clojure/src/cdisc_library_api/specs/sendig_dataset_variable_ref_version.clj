(ns cdisc-library-api.specs.sendig-dataset-variable-ref-version
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def sendig-dataset-variable-ref-version-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def sendig-dataset-variable-ref-version-spec
  (ds/spec
    {:name ::sendig-dataset-variable-ref-version
     :spec sendig-dataset-variable-ref-version-data}))
