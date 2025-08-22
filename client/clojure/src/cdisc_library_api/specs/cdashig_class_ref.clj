(ns cdisc-library-api.specs.cdashig-class-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def cdashig-class-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def cdashig-class-ref-spec
  (ds/spec
    {:name ::cdashig-class-ref
     :spec cdashig-class-ref-data}))
