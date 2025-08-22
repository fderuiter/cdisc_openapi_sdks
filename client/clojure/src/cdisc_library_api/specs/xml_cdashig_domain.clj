(ns cdisc-library-api.specs.xml-cdashig-domain
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdashig-domain :refer :all]
            )
  (:import (java.io File)))


(def xml-cdashig-domain-data
  {
   (ds/opt :self) cdashig-domain-spec
   })

(def xml-cdashig-domain-spec
  (ds/spec
    {:name ::xml-cdashig-domain
     :spec xml-cdashig-domain-data}))
