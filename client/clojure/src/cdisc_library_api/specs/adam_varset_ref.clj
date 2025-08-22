(ns cdisc-library-api.specs.adam-varset-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def adam-varset-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def adam-varset-ref-spec
  (ds/spec
    {:name ::adam-varset-ref
     :spec adam-varset-ref-data}))
