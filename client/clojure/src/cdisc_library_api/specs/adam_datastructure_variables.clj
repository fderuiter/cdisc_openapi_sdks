(ns cdisc-library-api.specs.adam-datastructure-variables
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.adam-datastructure-variables-links :refer :all]
            )
  (:import (java.io File)))


(def adam-datastructure-variables-data
  {
   (ds/opt :ordinal) string?
   (ds/opt :name) string?
   (ds/opt :label) string?
   (ds/opt :description) string?
   (ds/opt :class) string?
   (ds/opt :_links) adam-datastructure-variables-links-spec
   })

(def adam-datastructure-variables-spec
  (ds/spec
    {:name ::adam-datastructure-variables
     :spec adam-datastructure-variables-data}))
