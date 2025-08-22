(ns cdisc-library-api.specs.ct-term-ref-element
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def ct-term-ref-element-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def ct-term-ref-element-spec
  (ds/spec
    {:name ::ct-term-ref-element
     :spec ct-term-ref-element-data}))
