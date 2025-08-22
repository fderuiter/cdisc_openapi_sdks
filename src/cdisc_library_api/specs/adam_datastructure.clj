(ns cdisc-library-api.specs.adam-datastructure
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.adam-datastructure-links :refer :all]
            [cdisc-library-api.specs.adam-varset :refer :all]
            )
  (:import (java.io File)))


(def adam-datastructure-data
  {
   (ds/opt :ordinal) string?
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :class) string?
   (ds/opt :_links) adam-datastructure-links-spec
   (ds/opt :analysisVariableSets) (s/coll-of adam-varset-spec)
   })

(def adam-datastructure-spec
  (ds/spec
    {:name ::adam-datastructure
     :spec adam-datastructure-data}))
