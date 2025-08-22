(ns cdisc-library-api.specs.sendig-product
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sendig-product-links :refer :all]
            [cdisc-library-api.specs.sendig-class :refer :all]
            )
  (:import (java.io File)))


(def sendig-product-data
  {
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :source) string?
   (ds/opt :effectiveDate) string?
   (ds/opt :registrationStatus) string?
   (ds/opt :version) string?
   (ds/opt :_links) sendig-product-links-spec
   (ds/opt :classes) (s/coll-of sendig-class-spec)
   })

(def sendig-product-spec
  (ds/spec
    {:name ::sendig-product
     :spec sendig-product-data}))
