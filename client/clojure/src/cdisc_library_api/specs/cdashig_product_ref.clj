(ns cdisc-library-api.specs.cdashig-product-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def cdashig-product-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def cdashig-product-ref-spec
  (ds/spec
    {:name ::cdashig-product-ref
     :spec cdashig-product-ref-data}))
