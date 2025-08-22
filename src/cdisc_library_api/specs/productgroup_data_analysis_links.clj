(ns cdisc-library-api.specs.productgroup-data-analysis-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.productgroup-ref :refer :all]
            [cdisc-library-api.specs.adam-product-ref-element :refer :all]
            )
  (:import (java.io File)))


(def productgroup-data-analysis-links-data
  {
   (ds/opt :self) productgroup-ref-spec
   (ds/opt :adam) (s/coll-of adam-product-ref-element-spec)
   })

(def productgroup-data-analysis-links-spec
  (ds/spec
    {:name ::productgroup-data-analysis-links
     :spec productgroup-data-analysis-links-data}))
