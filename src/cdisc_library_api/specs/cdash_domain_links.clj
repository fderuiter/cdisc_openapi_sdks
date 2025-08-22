(ns cdisc-library-api.specs.cdash-domain-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdash-domain-ref :refer :all]
            [cdisc-library-api.specs.cdash-product-ref :refer :all]
            [cdisc-library-api.specs.cdash-class-ref :refer :all]
            [cdisc-library-api.specs.cdash-domain-ref :refer :all]
            )
  (:import (java.io File)))


(def cdash-domain-links-data
  {
   (ds/opt :self) cdash-domain-ref-spec
   (ds/opt :parentProduct) cdash-product-ref-spec
   (ds/opt :parentClass) cdash-class-ref-spec
   (ds/opt :priorVersion) cdash-domain-ref-spec
   })

(def cdash-domain-links-spec
  (ds/spec
    {:name ::cdash-domain-links
     :spec cdash-domain-links-data}))
