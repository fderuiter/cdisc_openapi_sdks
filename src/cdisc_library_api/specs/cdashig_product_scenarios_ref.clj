(ns cdisc-library-api.specs.cdashig-product-scenarios-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def cdashig-product-scenarios-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def cdashig-product-scenarios-ref-spec
  (ds/spec
    {:name ::cdashig-product-scenarios-ref
     :spec cdashig-product-scenarios-ref-data}))
