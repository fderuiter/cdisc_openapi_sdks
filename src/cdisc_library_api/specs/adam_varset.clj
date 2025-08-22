(ns cdisc-library-api.specs.adam-varset
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.adam-varset-links :refer :all]
            [cdisc-library-api.specs.adam-variable :refer :all]
            )
  (:import (java.io File)))


(def adam-varset-data
  {
   (ds/opt :ordinal) string?
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :_links) adam-varset-links-spec
   (ds/opt :analysisVariables) (s/coll-of adam-variable-spec)
   })

(def adam-varset-spec
  (ds/spec
    {:name ::adam-varset
     :spec adam-varset-data}))
