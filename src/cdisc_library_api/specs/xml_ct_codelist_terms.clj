(ns cdisc-library-api.specs.xml-ct-codelist-terms
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.ct-codelist-terms :refer :all]
            )
  (:import (java.io File)))


(def xml-ct-codelist-terms-data
  {
   (ds/opt :self) ct-codelist-terms-spec
   })

(def xml-ct-codelist-terms-spec
  (ds/spec
    {:name ::xml-ct-codelist-terms
     :spec xml-ct-codelist-terms-data}))
