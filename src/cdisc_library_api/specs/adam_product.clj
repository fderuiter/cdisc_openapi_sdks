(ns cdisc-library-api.specs.adam-product
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.adam-product-links :refer :all]
            [cdisc-library-api.specs.adam-datastructure :refer :all]
            )
  (:import (java.io File)))


(def adam-product-data
  {
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :source) string?
   (ds/opt :effectiveDate) string?
   (ds/opt :registrationStatus) string?
   (ds/opt :version) string?
   (ds/opt :_links) adam-product-links-spec
   (ds/opt :dataStructures) (s/coll-of adam-datastructure-spec)
   })

(def adam-product-spec
  (ds/spec
    {:name ::adam-product
     :spec adam-product-data}))
