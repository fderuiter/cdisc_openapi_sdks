(ns cdisc-library-api.specs.adam-datastructure-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.adam-datastructure-ref :refer :all]
            [cdisc-library-api.specs.adam-product-ref :refer :all]
            [cdisc-library-api.specs.adam-datastructure-ref :refer :all]
            )
  (:import (java.io File)))


(def adam-datastructure-links-data
  {
   (ds/opt :self) adam-datastructure-ref-spec
   (ds/opt :parentProduct) adam-product-ref-spec
   (ds/opt :priorVersion) adam-datastructure-ref-spec
   })

(def adam-datastructure-links-spec
  (ds/spec
    {:name ::adam-datastructure-links
     :spec adam-datastructure-links-data}))
