(ns cdisc-library-api.specs.sdtmig-class-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtmig-class-ref :refer :all]
            [cdisc-library-api.specs.sdtm-class-ref :refer :all]
            [cdisc-library-api.specs.sdtmig-product-ref :refer :all]
            [cdisc-library-api.specs.sdtmig-class-ref :refer :all]
            [cdisc-library-api.specs.sdtmig-class-ref-subclass :refer :all]
            [cdisc-library-api.specs.sdtmig-class-ref :refer :all]
            )
  (:import (java.io File)))


(def sdtmig-class-links-data
  {
   (ds/opt :self) sdtmig-class-ref-spec
   (ds/opt :modelClass) sdtm-class-ref-spec
   (ds/opt :parentProduct) sdtmig-product-ref-spec
   (ds/opt :parentClass) sdtmig-class-ref-spec
   (ds/opt :subclasses) (s/coll-of sdtmig-class-ref-subclass-spec)
   (ds/opt :priorVersion) sdtmig-class-ref-spec
   })

(def sdtmig-class-links-spec
  (ds/spec
    {:name ::sdtmig-class-links
     :spec sdtmig-class-links-data}))
