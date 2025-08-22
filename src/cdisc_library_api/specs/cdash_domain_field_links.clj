(ns cdisc-library-api.specs.cdash-domain-field-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdash-domain-field-ref :refer :all]
            [cdisc-library-api.specs.root-ct-codelist-ref-element :refer :all]
            [cdisc-library-api.specs.cdash-product-ref :refer :all]
            [cdisc-library-api.specs.cdash-class-ref :refer :all]
            [cdisc-library-api.specs.cdash-domain-ref :refer :all]
            [cdisc-library-api.specs.root-cdash-domain-field-ref :refer :all]
            [cdisc-library-api.specs.cdash-domain-field-ref :refer :all]
            [cdisc-library-api.specs.sdtm-dataset-variable-ref-target :refer :all]
            [cdisc-library-api.specs.sdtmig-dataset-variable-ref-target :refer :all]
            )
  (:import (java.io File)))


(def cdash-domain-field-links-data
  {
   (ds/opt :self) cdash-domain-field-ref-spec
   (ds/opt :codelist) (s/coll-of root-ct-codelist-ref-element-spec)
   (ds/opt :parentProduct) cdash-product-ref-spec
   (ds/opt :parentClass) cdash-class-ref-spec
   (ds/opt :parentDomain) cdash-domain-ref-spec
   (ds/opt :rootItem) root-cdash-domain-field-ref-spec
   (ds/opt :priorVersion) cdash-domain-field-ref-spec
   (ds/opt :sdtmDatasetMappingTargets) (s/coll-of sdtm-dataset-variable-ref-target-spec)
   (ds/opt :sdtmigDatasetMappingTargets) (s/coll-of sdtmig-dataset-variable-ref-target-spec)
   })

(def cdash-domain-field-links-spec
  (ds/spec
    {:name ::cdash-domain-field-links
     :spec cdash-domain-field-links-data}))
