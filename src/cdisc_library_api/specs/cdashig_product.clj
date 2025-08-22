(ns cdisc-library-api.specs.cdashig-product
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdashig-product-links :refer :all]
            [cdisc-library-api.specs.cdashig-class :refer :all]
            )
  (:import (java.io File)))


(def cdashig-product-data
  {
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :source) string?
   (ds/opt :effectiveDate) string?
   (ds/opt :registrationStatus) string?
   (ds/opt :version) string?
   (ds/opt :_links) cdashig-product-links-spec
   (ds/opt :classes) (s/coll-of cdashig-class-spec)
   })

(def cdashig-product-spec
  (ds/spec
    {:name ::cdashig-product
     :spec cdashig-product-data}))
