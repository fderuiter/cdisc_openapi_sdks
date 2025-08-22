(ns cdisc-library-api.specs.cdash-product
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdash-product-links :refer :all]
            [cdisc-library-api.specs.cdash-class :refer :all]
            [cdisc-library-api.specs.cdash-domain :refer :all]
            )
  (:import (java.io File)))


(def cdash-product-data
  {
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :source) string?
   (ds/opt :effectiveDate) string?
   (ds/opt :registrationStatus) string?
   (ds/opt :version) string?
   (ds/opt :_links) cdash-product-links-spec
   (ds/opt :classes) (s/coll-of cdash-class-spec)
   (ds/opt :domains) (s/coll-of cdash-domain-spec)
   })

(def cdash-product-spec
  (ds/spec
    {:name ::cdash-product
     :spec cdash-product-data}))
