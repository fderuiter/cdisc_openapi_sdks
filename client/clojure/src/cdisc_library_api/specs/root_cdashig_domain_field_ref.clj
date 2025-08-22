(ns cdisc-library-api.specs.root-cdashig-domain-field-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def root-cdashig-domain-field-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def root-cdashig-domain-field-ref-spec
  (ds/spec
    {:name ::root-cdashig-domain-field-ref
     :spec root-cdashig-domain-field-ref-data}))
