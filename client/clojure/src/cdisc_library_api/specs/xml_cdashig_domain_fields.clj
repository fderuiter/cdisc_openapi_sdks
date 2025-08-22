(ns cdisc-library-api.specs.xml-cdashig-domain-fields
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdashig-domain-fields :refer :all]
            )
  (:import (java.io File)))


(def xml-cdashig-domain-fields-data
  {
   (ds/opt :self) cdashig-domain-fields-spec
   })

(def xml-cdashig-domain-fields-spec
  (ds/spec
    {:name ::xml-cdashig-domain-fields
     :spec xml-cdashig-domain-fields-data}))
