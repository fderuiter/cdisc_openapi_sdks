(ns cdisc-library-api.specs.xml-root-ct-codelist
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.root-ct-codelist :refer :all]
            )
  (:import (java.io File)))


(def xml-root-ct-codelist-data
  {
   (ds/opt :self) root-ct-codelist-spec
   })

(def xml-root-ct-codelist-spec
  (ds/spec
    {:name ::xml-root-ct-codelist
     :spec xml-root-ct-codelist-data}))
