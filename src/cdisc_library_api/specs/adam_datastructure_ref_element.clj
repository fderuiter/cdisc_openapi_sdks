(ns cdisc-library-api.specs.adam-datastructure-ref-element
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def adam-datastructure-ref-element-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def adam-datastructure-ref-element-spec
  (ds/spec
    {:name ::adam-datastructure-ref-element
     :spec adam-datastructure-ref-element-data}))
