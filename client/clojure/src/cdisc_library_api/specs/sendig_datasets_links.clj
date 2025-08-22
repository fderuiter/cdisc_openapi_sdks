(ns cdisc-library-api.specs.sendig-datasets-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sendig-datasets-ref :refer :all]
            [cdisc-library-api.specs.sendig-product-ref :refer :all]
            [cdisc-library-api.specs.sendig-dataset-ref-element :refer :all]
            )
  (:import (java.io File)))


(def sendig-datasets-links-data
  {
   (ds/opt :self) sendig-datasets-ref-spec
   (ds/opt :parentProduct) sendig-product-ref-spec
   (ds/opt :datasets) (s/coll-of sendig-dataset-ref-element-spec)
   })

(def sendig-datasets-links-spec
  (ds/spec
    {:name ::sendig-datasets-links
     :spec sendig-datasets-links-data}))
