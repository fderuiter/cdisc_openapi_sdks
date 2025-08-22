(ns cdisc-library-api.specs.adam-datastructure-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def adam-datastructure-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def adam-datastructure-ref-spec
  (ds/spec
    {:name ::adam-datastructure-ref
     :spec adam-datastructure-ref-data}))
