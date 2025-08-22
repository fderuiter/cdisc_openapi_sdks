(ns cdisc-library-api.specs.productgroup-terminology-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.productgroup-ref :refer :all]
            [cdisc-library-api.specs.ct-package-ref-element :refer :all]
            )
  (:import (java.io File)))


(def productgroup-terminology-links-data
  {
   (ds/opt :self) productgroup-ref-spec
   (ds/opt :packages) (s/coll-of ct-package-ref-element-spec)
   })

(def productgroup-terminology-links-spec
  (ds/spec
    {:name ::productgroup-terminology-links
     :spec productgroup-terminology-links-data}))
