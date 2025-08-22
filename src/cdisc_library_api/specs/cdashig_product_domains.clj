(ns cdisc-library-api.specs.cdashig-product-domains
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdashig-product-domains-links :refer :all]
            )
  (:import (java.io File)))


(def cdashig-product-domains-data
  {
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :source) string?
   (ds/opt :effectiveDate) string?
   (ds/opt :registrationStatus) string?
   (ds/opt :version) string?
   (ds/opt :_links) cdashig-product-domains-links-spec
   })

(def cdashig-product-domains-spec
  (ds/spec
    {:name ::cdashig-product-domains
     :spec cdashig-product-domains-data}))
