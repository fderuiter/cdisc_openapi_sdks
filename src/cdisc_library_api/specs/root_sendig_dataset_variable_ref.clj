(ns cdisc-library-api.specs.root-sendig-dataset-variable-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def root-sendig-dataset-variable-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def root-sendig-dataset-variable-ref-spec
  (ds/spec
    {:name ::root-sendig-dataset-variable-ref
     :spec root-sendig-dataset-variable-ref-data}))
