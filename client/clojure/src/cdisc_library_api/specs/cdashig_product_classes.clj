(ns cdisc-library-api.specs.cdashig-product-classes
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdashig-product-classes-links :refer :all]
            )
  (:import (java.io File)))


(def cdashig-product-classes-data
  {
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :source) string?
   (ds/opt :effectiveDate) string?
   (ds/opt :registrationStatus) string?
   (ds/opt :version) string?
   (ds/opt :_links) cdashig-product-classes-links-spec
   })

(def cdashig-product-classes-spec
  (ds/spec
    {:name ::cdashig-product-classes
     :spec cdashig-product-classes-data}))
