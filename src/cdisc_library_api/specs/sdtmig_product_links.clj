(ns cdisc-library-api.specs.sdtmig-product-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtmig-product-ref :refer :all]
            [cdisc-library-api.specs.sdtm-product-ref :refer :all]
            [cdisc-library-api.specs.sdtmig-product-ref :refer :all]
            )
  (:import (java.io File)))


(def sdtmig-product-links-data
  {
   (ds/opt :self) sdtmig-product-ref-spec
   (ds/opt :model) sdtm-product-ref-spec
   (ds/opt :priorVersion) sdtmig-product-ref-spec
   })

(def sdtmig-product-links-spec
  (ds/spec
    {:name ::sdtmig-product-links
     :spec sdtmig-product-links-data}))
