(ns cdisc-library-api.specs.sdtmig-product-ref-element
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def sdtmig-product-ref-element-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def sdtmig-product-ref-element-spec
  (ds/spec
    {:name ::sdtmig-product-ref-element
     :spec sdtmig-product-ref-element-data}))
