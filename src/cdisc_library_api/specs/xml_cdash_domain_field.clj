(ns cdisc-library-api.specs.xml-cdash-domain-field
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdash-domain-field :refer :all]
            )
  (:import (java.io File)))


(def xml-cdash-domain-field-data
  {
   (ds/opt :self) cdash-domain-field-spec
   })

(def xml-cdash-domain-field-spec
  (ds/spec
    {:name ::xml-cdash-domain-field
     :spec xml-cdash-domain-field-data}))
