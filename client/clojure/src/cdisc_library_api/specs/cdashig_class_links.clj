(ns cdisc-library-api.specs.cdashig-class-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdashig-class-ref :refer :all]
            [cdisc-library-api.specs.cdash-class-ref :refer :all]
            [cdisc-library-api.specs.cdashig-product-ref :refer :all]
            [cdisc-library-api.specs.cdashig-class-ref :refer :all]
            [cdisc-library-api.specs.cdashig-class-ref-subclass :refer :all]
            [cdisc-library-api.specs.cdashig-class-ref :refer :all]
            )
  (:import (java.io File)))


(def cdashig-class-links-data
  {
   (ds/opt :self) cdashig-class-ref-spec
   (ds/opt :modelClass) cdash-class-ref-spec
   (ds/opt :parentProduct) cdashig-product-ref-spec
   (ds/opt :parentClass) cdashig-class-ref-spec
   (ds/opt :subclasses) (s/coll-of cdashig-class-ref-subclass-spec)
   (ds/opt :priorVersion) cdashig-class-ref-spec
   })

(def cdashig-class-links-spec
  (ds/spec
    {:name ::cdashig-class-links
     :spec cdashig-class-links-data}))
