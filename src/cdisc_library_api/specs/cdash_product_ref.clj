(ns cdisc-library-api.specs.cdash-product-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def cdash-product-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def cdash-product-ref-spec
  (ds/spec
    {:name ::cdash-product-ref
     :spec cdash-product-ref-data}))
