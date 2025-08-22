(ns cdisc-library-api.specs.cdash-class-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdash-class-ref :refer :all]
            [cdisc-library-api.specs.cdash-product-ref :refer :all]
            [cdisc-library-api.specs.cdash-class-ref :refer :all]
            )
  (:import (java.io File)))


(def cdash-class-links-data
  {
   (ds/opt :self) cdash-class-ref-spec
   (ds/opt :parentProduct) cdash-product-ref-spec
   (ds/opt :priorVersion) cdash-class-ref-spec
   })

(def cdash-class-links-spec
  (ds/spec
    {:name ::cdash-class-links
     :spec cdash-class-links-data}))
