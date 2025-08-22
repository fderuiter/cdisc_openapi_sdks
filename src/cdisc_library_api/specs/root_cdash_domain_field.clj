(ns cdisc-library-api.specs.root-cdash-domain-field
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.root-cdash-domain-field-links :refer :all]
            )
  (:import (java.io File)))


(def root-cdash-domain-field-data
  {
   (ds/opt :_links) root-cdash-domain-field-links-spec
   })

(def root-cdash-domain-field-spec
  (ds/spec
    {:name ::root-cdash-domain-field
     :spec root-cdash-domain-field-data}))
