(ns cdisc-library-api.specs.export-ct-term
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def export-ct-term-data
  {
   (ds/opt :bundle-1) string?
   (ds/opt :CDISCSynonyms) (s/coll-of string?)
   (ds/opt :bundle-2) string?
   })

(def export-ct-term-spec
  (ds/spec
    {:name ::export-ct-term
     :spec export-ct-term-data}))
