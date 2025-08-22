(ns cdisc-library-api.specs.sdtmig-product
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtmig-product-links :refer :all]
            [cdisc-library-api.specs.sdtmig-class :refer :all]
            )
  (:import (java.io File)))


(def sdtmig-product-data
  {
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :source) string?
   (ds/opt :effectiveDate) string?
   (ds/opt :registrationStatus) string?
   (ds/opt :version) string?
   (ds/opt :_links) sdtmig-product-links-spec
   (ds/opt :classes) (s/coll-of sdtmig-class-spec)
   })

(def sdtmig-product-spec
  (ds/spec
    {:name ::sdtmig-product
     :spec sdtmig-product-data}))
