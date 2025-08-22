(ns cdisc-library-api.specs.cdash-product-ref-element
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def cdash-product-ref-element-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def cdash-product-ref-element-spec
  (ds/spec
    {:name ::cdash-product-ref-element
     :spec cdash-product-ref-element-data}))
