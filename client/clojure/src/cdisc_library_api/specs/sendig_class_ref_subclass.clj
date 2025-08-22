(ns cdisc-library-api.specs.sendig-class-ref-subclass
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def sendig-class-ref-subclass-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def sendig-class-ref-subclass-spec
  (ds/spec
    {:name ::sendig-class-ref-subclass
     :spec sendig-class-ref-subclass-data}))
