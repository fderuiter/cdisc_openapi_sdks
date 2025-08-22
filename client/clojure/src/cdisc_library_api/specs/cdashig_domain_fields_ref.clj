(ns cdisc-library-api.specs.cdashig-domain-fields-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def cdashig-domain-fields-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def cdashig-domain-fields-ref-spec
  (ds/spec
    {:name ::cdashig-domain-fields-ref
     :spec cdashig-domain-fields-ref-data}))
