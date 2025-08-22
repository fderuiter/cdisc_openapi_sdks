(ns cdisc-library-api.specs.adam-variable-ref-element
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def adam-variable-ref-element-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def adam-variable-ref-element-spec
  (ds/spec
    {:name ::adam-variable-ref-element
     :spec adam-variable-ref-element-data}))
