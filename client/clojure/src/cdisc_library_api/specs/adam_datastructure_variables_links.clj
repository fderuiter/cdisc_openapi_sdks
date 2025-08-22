(ns cdisc-library-api.specs.adam-datastructure-variables-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.adam-datastructure-variables-ref :refer :all]
            [cdisc-library-api.specs.adam-product-ref :refer :all]
            [cdisc-library-api.specs.adam-datastructure-variables-ref :refer :all]
            [cdisc-library-api.specs.adam-variable-ref-element :refer :all]
            )
  (:import (java.io File)))


(def adam-datastructure-variables-links-data
  {
   (ds/opt :self) adam-datastructure-variables-ref-spec
   (ds/opt :parentProduct) adam-product-ref-spec
   (ds/opt :priorVersion) adam-datastructure-variables-ref-spec
   (ds/opt :analysisVariables) (s/coll-of adam-variable-ref-element-spec)
   })

(def adam-datastructure-variables-links-spec
  (ds/spec
    {:name ::adam-datastructure-variables-links
     :spec adam-datastructure-variables-links-data}))
