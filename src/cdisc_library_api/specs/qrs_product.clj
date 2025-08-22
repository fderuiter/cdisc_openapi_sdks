(ns cdisc-library-api.specs.qrs-product
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.qrs-product-links :refer :all]
            [cdisc-library-api.specs.qrs-item :refer :all]
            )
  (:import (java.io File)))


(def qrs-product-data
  {
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :effectiveDate) string?
   (ds/opt :untilDate) string?
   (ds/opt :registrationStatus) string?
   (ds/opt :version) string?
   (ds/opt :qrsType) string?
   (ds/opt :_links) qrs-product-links-spec
   (ds/opt :items) (s/coll-of qrs-item-spec)
   })

(def qrs-product-spec
  (ds/spec
    {:name ::qrs-product
     :spec qrs-product-data}))
