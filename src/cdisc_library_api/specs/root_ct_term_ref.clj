(ns cdisc-library-api.specs.root-ct-term-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def root-ct-term-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def root-ct-term-ref-spec
  (ds/spec
    {:name ::root-ct-term-ref
     :spec root-ct-term-ref-data}))
