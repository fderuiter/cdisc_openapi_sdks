(ns cdisc-library-api.specs.sdtm-product-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def sdtm-product-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def sdtm-product-ref-spec
  (ds/spec
    {:name ::sdtm-product-ref
     :spec sdtm-product-ref-data}))
