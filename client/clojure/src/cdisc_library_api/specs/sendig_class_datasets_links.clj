(ns cdisc-library-api.specs.sendig-class-datasets-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sendig-class-datasets-ref :refer :all]
            [cdisc-library-api.specs.sendig-product-ref :refer :all]
            [cdisc-library-api.specs.sendig-dataset-ref-element :refer :all]
            )
  (:import (java.io File)))


(def sendig-class-datasets-links-data
  {
   (ds/opt :self) sendig-class-datasets-ref-spec
   (ds/opt :parentProduct) sendig-product-ref-spec
   (ds/opt :datasets) (s/coll-of sendig-dataset-ref-element-spec)
   })

(def sendig-class-datasets-links-spec
  (ds/spec
    {:name ::sendig-class-datasets-links
     :spec sendig-class-datasets-links-data}))
