(ns cdisc-library-api.specs.cdashig-product-scenarios
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdashig-product-scenarios-links :refer :all]
            )
  (:import (java.io File)))


(def cdashig-product-scenarios-data
  {
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :source) string?
   (ds/opt :effectiveDate) string?
   (ds/opt :registrationStatus) string?
   (ds/opt :version) string?
   (ds/opt :_links) cdashig-product-scenarios-links-spec
   })

(def cdashig-product-scenarios-spec
  (ds/spec
    {:name ::cdashig-product-scenarios
     :spec cdashig-product-scenarios-data}))
