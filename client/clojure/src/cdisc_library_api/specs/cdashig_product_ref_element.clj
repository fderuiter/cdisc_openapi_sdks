(ns cdisc-library-api.specs.cdashig-product-ref-element
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def cdashig-product-ref-element-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def cdashig-product-ref-element-spec
  (ds/spec
    {:name ::cdashig-product-ref-element
     :spec cdashig-product-ref-element-data}))
