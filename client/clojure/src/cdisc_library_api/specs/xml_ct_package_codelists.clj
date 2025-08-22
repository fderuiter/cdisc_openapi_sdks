(ns cdisc-library-api.specs.xml-ct-package-codelists
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.ct-package-codelists :refer :all]
            )
  (:import (java.io File)))


(def xml-ct-package-codelists-data
  {
   (ds/opt :self) ct-package-codelists-spec
   })

(def xml-ct-package-codelists-spec
  (ds/spec
    {:name ::xml-ct-package-codelists
     :spec xml-ct-package-codelists-data}))
