(ns cdisc-library-api.specs.xml-ct-packages
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.ct-packages :refer :all]
            )
  (:import (java.io File)))


(def xml-ct-packages-data
  {
   (ds/opt :self) ct-packages-spec
   })

(def xml-ct-packages-spec
  (ds/spec
    {:name ::xml-ct-packages
     :spec xml-ct-packages-data}))
