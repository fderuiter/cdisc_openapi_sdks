(ns cdisc-library-api.specs.cdash-product-domains-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def cdash-product-domains-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def cdash-product-domains-ref-spec
  (ds/spec
    {:name ::cdash-product-domains-ref
     :spec cdash-product-domains-ref-data}))
