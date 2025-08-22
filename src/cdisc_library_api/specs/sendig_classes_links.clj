(ns cdisc-library-api.specs.sendig-classes-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sendig-classes-ref :refer :all]
            [cdisc-library-api.specs.sendig-classes-ref :refer :all]
            [cdisc-library-api.specs.sendig-class-ref-element :refer :all]
            )
  (:import (java.io File)))


(def sendig-classes-links-data
  {
   (ds/opt :self) sendig-classes-ref-spec
   (ds/opt :priorVersion) sendig-classes-ref-spec
   (ds/opt :classes) (s/coll-of sendig-class-ref-element-spec)
   })

(def sendig-classes-links-spec
  (ds/spec
    {:name ::sendig-classes-links
     :spec sendig-classes-links-data}))
