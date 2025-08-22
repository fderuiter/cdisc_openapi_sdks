(ns cdisc-library-api.specs.default-search-response
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.default-search-response-hits-inner :refer :all]
            )
  (:import (java.io File)))


(def default-search-response-data
  {
   (ds/opt :hits) (s/coll-of default-search-response-hits-inner-spec)
   (ds/opt :totalHits) float?
   })

(def default-search-response-spec
  (ds/spec
    {:name ::default-search-response
     :spec default-search-response-data}))
