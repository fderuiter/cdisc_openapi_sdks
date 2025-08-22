(ns cdisc-library-api.specs.ct-term-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.ct-term-ref :refer :all]
            [cdisc-library-api.specs.ct-package-ref :refer :all]
            [cdisc-library-api.specs.ct-codelist-ref :refer :all]
            [cdisc-library-api.specs.root-ct-term-ref :refer :all]
            [cdisc-library-api.specs.ct-term-ref :refer :all]
            )
  (:import (java.io File)))


(def ct-term-links-data
  {
   (ds/opt :self) ct-term-ref-spec
   (ds/opt :parentPackage) ct-package-ref-spec
   (ds/opt :parentCodelist) ct-codelist-ref-spec
   (ds/opt :rootItem) root-ct-term-ref-spec
   (ds/opt :priorVersion) ct-term-ref-spec
   })

(def ct-term-links-spec
  (ds/spec
    {:name ::ct-term-links
     :spec ct-term-links-data}))
