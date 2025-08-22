(ns cdisc-library-api.specs.root-cdash-class-field
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.root-cdash-class-field-links :refer :all]
            )
  (:import (java.io File)))


(def root-cdash-class-field-data
  {
   (ds/opt :_links) root-cdash-class-field-links-spec
   })

(def root-cdash-class-field-spec
  (ds/spec
    {:name ::root-cdash-class-field
     :spec root-cdash-class-field-data}))
