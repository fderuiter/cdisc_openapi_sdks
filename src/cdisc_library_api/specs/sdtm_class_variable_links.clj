(ns cdisc-library-api.specs.sdtm-class-variable-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtm-class-variable-ref :refer :all]
            [cdisc-library-api.specs.sdtm-product-ref :refer :all]
            [cdisc-library-api.specs.sdtm-class-ref :refer :all]
            [cdisc-library-api.specs.sdtm-class-variable-ref-qualifies :refer :all]
            [cdisc-library-api.specs.root-sdtm-class-variable-ref :refer :all]
            [cdisc-library-api.specs.sdtm-class-variable-ref :refer :all]
            )
  (:import (java.io File)))


(def sdtm-class-variable-links-data
  {
   (ds/opt :self) sdtm-class-variable-ref-spec
   (ds/opt :parentProduct) sdtm-product-ref-spec
   (ds/opt :parentClass) sdtm-class-ref-spec
   (ds/opt :qualifiesVariables) (s/coll-of sdtm-class-variable-ref-qualifies-spec)
   (ds/opt :rootItem) root-sdtm-class-variable-ref-spec
   (ds/opt :priorVersion) sdtm-class-variable-ref-spec
   })

(def sdtm-class-variable-links-spec
  (ds/spec
    {:name ::sdtm-class-variable-links
     :spec sdtm-class-variable-links-data}))
