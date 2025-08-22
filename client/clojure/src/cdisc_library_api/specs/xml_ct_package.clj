(ns cdisc-library-api.specs.xml-ct-package
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.ct-package :refer :all]
            )
  (:import (java.io File)))


(def xml-ct-package-data
  {
   (ds/opt :self) ct-package-spec
   })

(def xml-ct-package-spec
  (ds/spec
    {:name ::xml-ct-package
     :spec xml-ct-package-data}))
