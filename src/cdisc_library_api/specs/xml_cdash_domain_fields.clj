(ns cdisc-library-api.specs.xml-cdash-domain-fields
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdash-domain-fields :refer :all]
            )
  (:import (java.io File)))


(def xml-cdash-domain-fields-data
  {
   (ds/opt :self) cdash-domain-fields-spec
   })

(def xml-cdash-domain-fields-spec
  (ds/spec
    {:name ::xml-cdash-domain-fields
     :spec xml-cdash-domain-fields-data}))
