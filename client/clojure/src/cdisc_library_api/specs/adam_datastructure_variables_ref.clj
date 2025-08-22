(ns cdisc-library-api.specs.adam-datastructure-variables-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def adam-datastructure-variables-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def adam-datastructure-variables-ref-spec
  (ds/spec
    {:name ::adam-datastructure-variables-ref
     :spec adam-datastructure-variables-ref-data}))
