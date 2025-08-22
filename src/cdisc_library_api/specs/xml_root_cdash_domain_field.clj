(ns cdisc-library-api.specs.xml-root-cdash-domain-field
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.root-cdash-domain-field :refer :all]
            )
  (:import (java.io File)))


(def xml-root-cdash-domain-field-data
  {
   (ds/opt :self) root-cdash-domain-field-spec
   })

(def xml-root-cdash-domain-field-spec
  (ds/spec
    {:name ::xml-root-cdash-domain-field
     :spec xml-root-cdash-domain-field-data}))
