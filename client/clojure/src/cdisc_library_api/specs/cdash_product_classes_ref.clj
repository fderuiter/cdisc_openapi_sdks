(ns cdisc-library-api.specs.cdash-product-classes-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def cdash-product-classes-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def cdash-product-classes-ref-spec
  (ds/spec
    {:name ::cdash-product-classes-ref
     :spec cdash-product-classes-ref-data}))
