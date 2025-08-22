(ns cdisc-library-api.specs.qrs-product-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def qrs-product-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def qrs-product-ref-spec
  (ds/spec
    {:name ::qrs-product-ref
     :spec qrs-product-ref-data}))
