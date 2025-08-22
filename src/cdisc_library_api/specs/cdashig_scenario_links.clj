(ns cdisc-library-api.specs.cdashig-scenario-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdashig-scenario-ref :refer :all]
            [cdisc-library-api.specs.cdashig-product-ref :refer :all]
            [cdisc-library-api.specs.cdashig-class-ref :refer :all]
            [cdisc-library-api.specs.cdashig-domain-ref :refer :all]
            [cdisc-library-api.specs.cdashig-scenario-ref :refer :all]
            )
  (:import (java.io File)))


(def cdashig-scenario-links-data
  {
   (ds/opt :self) cdashig-scenario-ref-spec
   (ds/opt :parentProduct) cdashig-product-ref-spec
   (ds/opt :parentClass) cdashig-class-ref-spec
   (ds/opt :parentDomain) cdashig-domain-ref-spec
   (ds/opt :priorVersion) cdashig-scenario-ref-spec
   })

(def cdashig-scenario-links-spec
  (ds/spec
    {:name ::cdashig-scenario-links
     :spec cdashig-scenario-links-data}))
