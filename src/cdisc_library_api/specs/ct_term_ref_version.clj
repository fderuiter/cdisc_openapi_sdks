(ns cdisc-library-api.specs.ct-term-ref-version
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def ct-term-ref-version-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def ct-term-ref-version-spec
  (ds/spec
    {:name ::ct-term-ref-version
     :spec ct-term-ref-version-data}))
