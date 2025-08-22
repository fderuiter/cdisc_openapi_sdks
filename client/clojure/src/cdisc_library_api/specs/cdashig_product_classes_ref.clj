(ns cdisc-library-api.specs.cdashig-product-classes-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def cdashig-product-classes-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def cdashig-product-classes-ref-spec
  (ds/spec
    {:name ::cdashig-product-classes-ref
     :spec cdashig-product-classes-ref-data}))
