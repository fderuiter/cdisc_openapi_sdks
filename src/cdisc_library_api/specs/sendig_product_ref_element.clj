(ns cdisc-library-api.specs.sendig-product-ref-element
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def sendig-product-ref-element-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def sendig-product-ref-element-spec
  (ds/spec
    {:name ::sendig-product-ref-element
     :spec sendig-product-ref-element-data}))
