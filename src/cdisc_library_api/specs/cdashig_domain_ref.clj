(ns cdisc-library-api.specs.cdashig-domain-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def cdashig-domain-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def cdashig-domain-ref-spec
  (ds/spec
    {:name ::cdashig-domain-ref
     :spec cdashig-domain-ref-data}))
