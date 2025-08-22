(ns cdisc-library-api.specs.cdash-product-classes
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdash-product-classes-links :refer :all]
            )
  (:import (java.io File)))


(def cdash-product-classes-data
  {
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :source) string?
   (ds/opt :effectiveDate) string?
   (ds/opt :registrationStatus) string?
   (ds/opt :version) string?
   (ds/opt :_links) cdash-product-classes-links-spec
   })

(def cdash-product-classes-spec
  (ds/spec
    {:name ::cdash-product-classes
     :spec cdash-product-classes-data}))
