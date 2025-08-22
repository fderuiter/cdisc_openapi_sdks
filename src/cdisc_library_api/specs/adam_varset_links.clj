(ns cdisc-library-api.specs.adam-varset-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.adam-varset-ref :refer :all]
            [cdisc-library-api.specs.adam-product-ref :refer :all]
            [cdisc-library-api.specs.adam-datastructure-ref :refer :all]
            [cdisc-library-api.specs.adam-varset-ref :refer :all]
            )
  (:import (java.io File)))


(def adam-varset-links-data
  {
   (ds/opt :self) adam-varset-ref-spec
   (ds/opt :parentProduct) adam-product-ref-spec
   (ds/opt :parentDatastructure) adam-datastructure-ref-spec
   (ds/opt :priorVersion) adam-varset-ref-spec
   })

(def adam-varset-links-spec
  (ds/spec
    {:name ::adam-varset-links
     :spec adam-varset-links-data}))
