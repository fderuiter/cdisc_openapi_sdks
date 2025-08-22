(ns cdisc-library-api.specs.xml-cdash-domain
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdash-domain :refer :all]
            )
  (:import (java.io File)))


(def xml-cdash-domain-data
  {
   (ds/opt :self) cdash-domain-spec
   })

(def xml-cdash-domain-spec
  (ds/spec
    {:name ::xml-cdash-domain
     :spec xml-cdash-domain-data}))
