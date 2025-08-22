(ns cdisc-library-api.specs.cdash-class-field-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdash-class-field-ref :refer :all]
            [cdisc-library-api.specs.root-ct-codelist-ref-element :refer :all]
            [cdisc-library-api.specs.cdash-product-ref :refer :all]
            [cdisc-library-api.specs.cdash-class-ref :refer :all]
            [cdisc-library-api.specs.root-cdash-class-field-ref :refer :all]
            [cdisc-library-api.specs.cdash-class-field-ref :refer :all]
            [cdisc-library-api.specs.sdtm-class-variable-ref-target :refer :all]
            [cdisc-library-api.specs.sdtm-dataset-variable-ref-target :refer :all]
            )
  (:import (java.io File)))


(def cdash-class-field-links-data
  {
   (ds/opt :self) cdash-class-field-ref-spec
   (ds/opt :codelist) (s/coll-of root-ct-codelist-ref-element-spec)
   (ds/opt :parentProduct) cdash-product-ref-spec
   (ds/opt :parentClass) cdash-class-ref-spec
   (ds/opt :rootItem) root-cdash-class-field-ref-spec
   (ds/opt :priorVersion) cdash-class-field-ref-spec
   (ds/opt :sdtmClassMappingTargets) (s/coll-of sdtm-class-variable-ref-target-spec)
   (ds/opt :sdtmDatasetMappingTargets) (s/coll-of sdtm-dataset-variable-ref-target-spec)
   })

(def cdash-class-field-links-spec
  (ds/spec
    {:name ::cdash-class-field-links
     :spec cdash-class-field-links-data}))
