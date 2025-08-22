(ns cdisc-library-api.specs.ct-term-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def ct-term-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def ct-term-ref-spec
  (ds/spec
    {:name ::ct-term-ref
     :spec ct-term-ref-data}))
