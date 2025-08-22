(ns cdisc-library-api.specs.scope-values
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def scope-values-data
  {
   (ds/opt :total) float?
   (ds/opt :hasMore) boolean?
   (ds/opt :values) (s/coll-of string?)
   })

(def scope-values-spec
  (ds/spec
    {:name ::scope-values
     :spec scope-values-data}))
