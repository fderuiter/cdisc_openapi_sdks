(ns cdisc-library-api.specs.productgroup-qrs-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.productgroup-ref :refer :all]
            [cdisc-library-api.specs.qrs-ref-element :refer :all]
            )
  (:import (java.io File)))


(def productgroup-qrs-links-data
  {
   (ds/opt :self) productgroup-ref-spec
   (ds/opt :qrs) (s/coll-of qrs-ref-element-spec)
   })

(def productgroup-qrs-links-spec
  (ds/spec
    {:name ::productgroup-qrs-links
     :spec productgroup-qrs-links-data}))
