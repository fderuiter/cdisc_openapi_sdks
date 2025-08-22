(ns cdisc-library-api.specs.adam-product-datastructures
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.adam-product-datastructures-links :refer :all]
            )
  (:import (java.io File)))


(def adam-product-datastructures-data
  {
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :source) string?
   (ds/opt :effectiveDate) string?
   (ds/opt :registrationStatus) string?
   (ds/opt :version) string?
   (ds/opt :_links) adam-product-datastructures-links-spec
   })

(def adam-product-datastructures-spec
  (ds/spec
    {:name ::adam-product-datastructures
     :spec adam-product-datastructures-data}))
