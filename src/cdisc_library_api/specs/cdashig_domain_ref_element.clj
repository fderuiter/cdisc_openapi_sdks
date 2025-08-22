(ns cdisc-library-api.specs.cdashig-domain-ref-element
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def cdashig-domain-ref-element-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def cdashig-domain-ref-element-spec
  (ds/spec
    {:name ::cdashig-domain-ref-element
     :spec cdashig-domain-ref-element-data}))
