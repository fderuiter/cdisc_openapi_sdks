(ns cdisc-library-api.specs.sdtmig-product-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def sdtmig-product-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def sdtmig-product-ref-spec
  (ds/spec
    {:name ::sdtmig-product-ref
     :spec sdtmig-product-ref-data}))
