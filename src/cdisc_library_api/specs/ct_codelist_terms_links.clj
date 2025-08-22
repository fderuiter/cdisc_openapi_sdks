(ns cdisc-library-api.specs.ct-codelist-terms-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.ct-codelist-terms-ref :refer :all]
            [cdisc-library-api.specs.ct-package-ref :refer :all]
            [cdisc-library-api.specs.root-ct-codelist-ref :refer :all]
            [cdisc-library-api.specs.ct-codelist-terms-ref :refer :all]
            [cdisc-library-api.specs.ct-term-ref-element :refer :all]
            )
  (:import (java.io File)))


(def ct-codelist-terms-links-data
  {
   (ds/opt :self) ct-codelist-terms-ref-spec
   (ds/opt :parentPackage) ct-package-ref-spec
   (ds/opt :rootItem) root-ct-codelist-ref-spec
   (ds/opt :priorVersion) ct-codelist-terms-ref-spec
   (ds/opt :terms) (s/coll-of ct-term-ref-element-spec)
   })

(def ct-codelist-terms-links-spec
  (ds/spec
    {:name ::ct-codelist-terms-links
     :spec ct-codelist-terms-links-data}))
