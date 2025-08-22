(ns cdisc-library-api.specs.sdtm-class-variables-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtm-class-variables-ref :refer :all]
            [cdisc-library-api.specs.sdtm-product-ref :refer :all]
            [cdisc-library-api.specs.sdtm-class-variables-ref :refer :all]
            [cdisc-library-api.specs.sdtm-class-variable-ref-element :refer :all]
            )
  (:import (java.io File)))


(def sdtm-class-variables-links-data
  {
   (ds/opt :self) sdtm-class-variables-ref-spec
   (ds/opt :parentProduct) sdtm-product-ref-spec
   (ds/opt :priorVersion) sdtm-class-variables-ref-spec
   (ds/opt :classVariables) (s/coll-of sdtm-class-variable-ref-element-spec)
   })

(def sdtm-class-variables-links-spec
  (ds/spec
    {:name ::sdtm-class-variables-links
     :spec sdtm-class-variables-links-data}))
