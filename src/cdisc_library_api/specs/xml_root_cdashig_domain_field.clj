(ns cdisc-library-api.specs.xml-root-cdashig-domain-field
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.root-cdashig-domain-field :refer :all]
            )
  (:import (java.io File)))


(def xml-root-cdashig-domain-field-data
  {
   (ds/opt :self) root-cdashig-domain-field-spec
   })

(def xml-root-cdashig-domain-field-spec
  (ds/spec
    {:name ::xml-root-cdashig-domain-field
     :spec xml-root-cdashig-domain-field-data}))
