(ns cdisc-library-api.specs.qrs-items-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.qrs-items-ref :refer :all]
            [cdisc-library-api.specs.qrs-product-ref :refer :all]
            [cdisc-library-api.specs.qrs-item-ref-element :refer :all]
            )
  (:import (java.io File)))


(def qrs-items-links-data
  {
   (ds/opt :self) qrs-items-ref-spec
   (ds/opt :parentProduct) qrs-product-ref-spec
   (ds/opt :items) (s/coll-of qrs-item-ref-element-spec)
   })

(def qrs-items-links-spec
  (ds/spec
    {:name ::qrs-items-links
     :spec qrs-items-links-data}))
