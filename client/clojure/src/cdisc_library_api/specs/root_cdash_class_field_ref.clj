(ns cdisc-library-api.specs.root-cdash-class-field-ref
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            )
  (:import (java.io File)))


(def root-cdash-class-field-ref-data
  {
   (ds/opt :href) string?
   (ds/opt :title) string?
   (ds/opt :type) string?
   })

(def root-cdash-class-field-ref-spec
  (ds/spec
    {:name ::root-cdash-class-field-ref
     :spec root-cdash-class-field-ref-data}))
