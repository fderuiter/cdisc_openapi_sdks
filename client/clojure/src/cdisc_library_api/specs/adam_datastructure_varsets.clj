(ns cdisc-library-api.specs.adam-datastructure-varsets
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.adam-datastructure-varsets-links :refer :all]
            )
  (:import (java.io File)))


(def adam-datastructure-varsets-data
  {
   (ds/opt :ordinal) string?
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :class) string?
   (ds/opt :_links) adam-datastructure-varsets-links-spec
   })

(def adam-datastructure-varsets-spec
  (ds/spec
    {:name ::adam-datastructure-varsets
     :spec adam-datastructure-varsets-data}))
