(ns cdisc-library-api.specs.sendig-class-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sendig-class-ref :refer :all]
            [cdisc-library-api.specs.sdtm-class-ref :refer :all]
            [cdisc-library-api.specs.sendig-product-ref :refer :all]
            [cdisc-library-api.specs.sendig-class-ref :refer :all]
            [cdisc-library-api.specs.sendig-class-ref-subclass :refer :all]
            [cdisc-library-api.specs.sendig-class-ref :refer :all]
            )
  (:import (java.io File)))


(def sendig-class-links-data
  {
   (ds/opt :self) sendig-class-ref-spec
   (ds/opt :modelClass) sdtm-class-ref-spec
   (ds/opt :parentProduct) sendig-product-ref-spec
   (ds/opt :parentClass) sendig-class-ref-spec
   (ds/opt :subclasses) (s/coll-of sendig-class-ref-subclass-spec)
   (ds/opt :priorVersion) sendig-class-ref-spec
   })

(def sendig-class-links-spec
  (ds/spec
    {:name ::sendig-class-links
     :spec sendig-class-links-data}))
