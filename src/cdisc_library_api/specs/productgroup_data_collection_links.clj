(ns cdisc-library-api.specs.productgroup-data-collection-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.productgroup-ref :refer :all]
            [cdisc-library-api.specs.cdash-product-ref-element :refer :all]
            [cdisc-library-api.specs.cdashig-product-ref-element :refer :all]
            )
  (:import (java.io File)))


(def productgroup-data-collection-links-data
  {
   (ds/opt :self) productgroup-ref-spec
   (ds/opt :cdash) (s/coll-of cdash-product-ref-element-spec)
   (ds/opt :cdashig) (s/coll-of cdashig-product-ref-element-spec)
   })

(def productgroup-data-collection-links-spec
  (ds/spec
    {:name ::productgroup-data-collection-links
     :spec productgroup-data-collection-links-data}))
