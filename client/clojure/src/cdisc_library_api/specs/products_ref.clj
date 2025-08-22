(ns cdisc-library-api.specs.products-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def products-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def products-ref-spec
  (ds/spec
    {:name ::products-ref
     :spec products-ref-data}))
