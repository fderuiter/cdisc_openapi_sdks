(ns cdisc-library-api.specs.adam-datastructure-varsets-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def adam-datastructure-varsets-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def adam-datastructure-varsets-ref-spec
  (ds/spec
    {:name ::adam-datastructure-varsets-ref
     :spec adam-datastructure-varsets-ref-data}))
