(ns cdisc-library-api.specs.adam-variable-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def adam-variable-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def adam-variable-ref-spec
  (ds/spec
    {:name ::adam-variable-ref
     :spec adam-variable-ref-data}))
