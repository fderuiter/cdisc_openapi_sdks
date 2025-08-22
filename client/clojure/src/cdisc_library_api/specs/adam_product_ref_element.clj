(ns cdisc-library-api.specs.adam-product-ref-element
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def adam-product-ref-element-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def adam-product-ref-element-spec
  (ds/spec
    {:name ::adam-product-ref-element
     :spec adam-product-ref-element-data}))
