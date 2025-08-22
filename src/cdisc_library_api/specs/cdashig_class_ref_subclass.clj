(ns cdisc-library-api.specs.cdashig-class-ref-subclass
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def cdashig-class-ref-subclass-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def cdashig-class-ref-subclass-spec
  (ds/spec
    {:name ::cdashig-class-ref-subclass
     :spec cdashig-class-ref-subclass-data}))
