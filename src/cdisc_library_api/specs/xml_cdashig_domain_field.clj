(ns cdisc-library-api.specs.xml-cdashig-domain-field
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdashig-domain-field :refer :all]
            )
  (:import (java.io File)))


(def xml-cdashig-domain-field-data
  {
   (ds/opt :self) cdashig-domain-field-spec
   })

(def xml-cdashig-domain-field-spec
  (ds/spec
    {:name ::xml-cdashig-domain-field
     :spec xml-cdashig-domain-field-data}))
