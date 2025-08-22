(ns cdisc-library-api.specs.ct-packages-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def ct-packages-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def ct-packages-ref-spec
  (ds/spec
    {:name ::ct-packages-ref
     :spec ct-packages-ref-data}))
