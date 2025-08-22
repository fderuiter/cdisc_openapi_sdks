(ns cdisc-library-api.specs.adam-varset-ref-element
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def adam-varset-ref-element-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def adam-varset-ref-element-spec
  (ds/spec
    {:name ::adam-varset-ref-element
     :spec adam-varset-ref-element-data}))
