(ns cdisc-library-api.specs.adam-product-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def adam-product-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def adam-product-ref-spec
  (ds/spec
    {:name ::adam-product-ref
     :spec adam-product-ref-data}))
