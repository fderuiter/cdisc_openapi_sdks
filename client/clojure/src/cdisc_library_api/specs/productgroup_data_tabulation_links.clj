(ns cdisc-library-api.specs.productgroup-data-tabulation-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.productgroup-ref :refer :all]
            [cdisc-library-api.specs.sdtm-product-ref-element :refer :all]
            [cdisc-library-api.specs.sdtmig-product-ref-element :refer :all]
            [cdisc-library-api.specs.sendig-product-ref-element :refer :all]
            )
  (:import (java.io File)))


(def productgroup-data-tabulation-links-data
  {
   (ds/opt :self) productgroup-ref-spec
   (ds/opt :sdtm) (s/coll-of sdtm-product-ref-element-spec)
   (ds/opt :sdtmig) (s/coll-of sdtmig-product-ref-element-spec)
   (ds/opt :sendig) (s/coll-of sendig-product-ref-element-spec)
   })

(def productgroup-data-tabulation-links-spec
  (ds/spec
    {:name ::productgroup-data-tabulation-links
     :spec productgroup-data-tabulation-links-data}))
