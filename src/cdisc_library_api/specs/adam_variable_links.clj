(ns cdisc-library-api.specs.adam-variable-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.adam-variable-ref :refer :all]
            [cdisc-library-api.specs.root-ct-codelist-ref :refer :all]
            [cdisc-library-api.specs.adam-product-ref :refer :all]
            [cdisc-library-api.specs.adam-datastructure-ref :refer :all]
            [cdisc-library-api.specs.adam-varset-ref :refer :all]
            [cdisc-library-api.specs.adam-variable-ref :refer :all]
            )
  (:import (java.io File)))


(def adam-variable-links-data
  {
   (ds/opt :self) adam-variable-ref-spec
   (ds/opt :codelist) root-ct-codelist-ref-spec
   (ds/opt :parentProduct) adam-product-ref-spec
   (ds/opt :parentDatastructure) adam-datastructure-ref-spec
   (ds/opt :parentVariableSet) adam-varset-ref-spec
   (ds/opt :priorVersion) adam-variable-ref-spec
   })

(def adam-variable-links-spec
  (ds/spec
    {:name ::adam-variable-links
     :spec adam-variable-links-data}))
