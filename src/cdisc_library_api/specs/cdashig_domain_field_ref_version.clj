(ns cdisc-library-api.specs.cdashig-domain-field-ref-version
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def cdashig-domain-field-ref-version-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def cdashig-domain-field-ref-version-spec
  (ds/spec
    {:name ::cdashig-domain-field-ref-version
     :spec cdashig-domain-field-ref-version-data}))
