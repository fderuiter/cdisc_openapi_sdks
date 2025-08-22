(ns cdisc-library-api.specs.adam-product-datastructures-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def adam-product-datastructures-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def adam-product-datastructures-ref-spec
  (ds/spec
    {:name ::adam-product-datastructures-ref
     :spec adam-product-datastructures-ref-data}))
