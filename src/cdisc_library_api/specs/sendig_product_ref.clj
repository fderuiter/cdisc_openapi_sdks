(ns cdisc-library-api.specs.sendig-product-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def sendig-product-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def sendig-product-ref-spec
  (ds/spec
    {:name ::sendig-product-ref
     :spec sendig-product-ref-data}))
