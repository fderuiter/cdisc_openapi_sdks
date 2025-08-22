(ns cdisc-library-api.specs.ct-codelist-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.ct-codelist-ref :refer :all]
            [cdisc-library-api.specs.ct-package-ref :refer :all]
            [cdisc-library-api.specs.root-ct-codelist-ref :refer :all]
            [cdisc-library-api.specs.ct-codelist-ref :refer :all]
            )
  (:import (java.io File)))


(def ct-codelist-links-data
  {
   (ds/opt :self) ct-codelist-ref-spec
   (ds/opt :parentPackage) ct-package-ref-spec
   (ds/opt :rootItem) root-ct-codelist-ref-spec
   (ds/opt :priorVersion) ct-codelist-ref-spec
   })

(def ct-codelist-links-spec
  (ds/spec
    {:name ::ct-codelist-links
     :spec ct-codelist-links-data}))
