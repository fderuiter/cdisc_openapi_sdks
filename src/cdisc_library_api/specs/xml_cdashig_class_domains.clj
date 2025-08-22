(ns cdisc-library-api.specs.xml-cdashig-class-domains
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdashig-class-domains :refer :all]
            )
  (:import (java.io File)))


(def xml-cdashig-class-domains-data
  {
   (ds/opt :self) cdashig-class-domains-spec
   })

(def xml-cdashig-class-domains-spec
  (ds/spec
    {:name ::xml-cdashig-class-domains
     :spec xml-cdashig-class-domains-data}))
