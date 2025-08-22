(ns cdisc-library-api.specs.cdash-product-domains
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdash-product-domains-links :refer :all]
            )
  (:import (java.io File)))


(def cdash-product-domains-data
  {
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :source) string?
   (ds/opt :effectiveDate) string?
   (ds/opt :registrationStatus) string?
   (ds/opt :version) string?
   (ds/opt :_links) cdash-product-domains-links-spec
   })

(def cdash-product-domains-spec
  (ds/spec
    {:name ::cdash-product-domains
     :spec cdash-product-domains-data}))
