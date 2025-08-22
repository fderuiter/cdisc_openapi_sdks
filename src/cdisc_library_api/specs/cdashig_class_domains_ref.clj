(ns cdisc-library-api.specs.cdashig-class-domains-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def cdashig-class-domains-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def cdashig-class-domains-ref-spec
  (ds/spec
    {:name ::cdashig-class-domains-ref
     :spec cdashig-class-domains-ref-data}))
