(ns cdisc-library-api.specs.sdtm-product-ref-element
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def sdtm-product-ref-element-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def sdtm-product-ref-element-spec
  (ds/spec
    {:name ::sdtm-product-ref-element
     :spec sdtm-product-ref-element-data}))
