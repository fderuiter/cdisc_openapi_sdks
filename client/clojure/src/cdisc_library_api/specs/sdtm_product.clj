(ns cdisc-library-api.specs.sdtm-product
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.sdtm-product-links :refer :all]
            [cdisc-library-api.specs.sdtm-class :refer :all]
            [cdisc-library-api.specs.sdtm-dataset :refer :all]
            )
  (:import (java.io File)))


(def sdtm-product-data
  {
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :source) string?
   (ds/opt :effectiveDate) string?
   (ds/opt :registrationStatus) string?
   (ds/opt :version) string?
   (ds/opt :_links) sdtm-product-links-spec
   (ds/opt :classes) (s/coll-of sdtm-class-spec)
   (ds/opt :datasets) (s/coll-of sdtm-dataset-spec)
   })

(def sdtm-product-spec
  (ds/spec
    {:name ::sdtm-product
     :spec sdtm-product-data}))
