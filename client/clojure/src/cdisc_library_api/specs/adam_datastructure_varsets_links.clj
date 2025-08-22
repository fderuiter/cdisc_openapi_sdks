(ns cdisc-library-api.specs.adam-datastructure-varsets-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.adam-datastructure-varsets-ref :refer :all]
            [cdisc-library-api.specs.adam-product-ref :refer :all]
            [cdisc-library-api.specs.adam-datastructure-varsets-ref :refer :all]
            [cdisc-library-api.specs.adam-varset-ref-element :refer :all]
            )
  (:import (java.io File)))


(def adam-datastructure-varsets-links-data
  {
   (ds/opt :self) adam-datastructure-varsets-ref-spec
   (ds/opt :parentProduct) adam-product-ref-spec
   (ds/opt :priorVersion) adam-datastructure-varsets-ref-spec
   (ds/opt :analysisVariableSets) (s/coll-of adam-varset-ref-element-spec)
   })

(def adam-datastructure-varsets-links-spec
  (ds/spec
    {:name ::adam-datastructure-varsets-links
     :spec adam-datastructure-varsets-links-data}))
