(ns cdisc-library-api.specs.sdtm-class-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtm-class-ref :refer :all]
            [cdisc-library-api.specs.sdtm-product-ref :refer :all]
            [cdisc-library-api.specs.sdtm-class-ref :refer :all]
            [cdisc-library-api.specs.sdtm-class-ref-subclass :refer :all]
            [cdisc-library-api.specs.sdtm-class-ref :refer :all]
            )
  (:import (java.io File)))


(def sdtm-class-links-data
  {
   (ds/opt :self) sdtm-class-ref-spec
   (ds/opt :parentProduct) sdtm-product-ref-spec
   (ds/opt :parentClass) sdtm-class-ref-spec
   (ds/opt :subclasses) (s/coll-of sdtm-class-ref-subclass-spec)
   (ds/opt :priorVersion) sdtm-class-ref-spec
   })

(def sdtm-class-links-spec
  (ds/spec
    {:name ::sdtm-class-links
     :spec sdtm-class-links-data}))
