(ns cdisc-library-api.specs.xml-cdash-class-domains
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdash-class-domains :refer :all]
            )
  (:import (java.io File)))


(def xml-cdash-class-domains-data
  {
   (ds/opt :self) cdash-class-domains-spec
   })

(def xml-cdash-class-domains-spec
  (ds/spec
    {:name ::xml-cdash-class-domains
     :spec xml-cdash-class-domains-data}))
