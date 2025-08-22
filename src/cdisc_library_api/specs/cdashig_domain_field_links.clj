(ns cdisc-library-api.specs.cdashig-domain-field-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdashig-domain-field-ref :refer :all]
            [cdisc-library-api.specs.root-ct-codelist-ref-element :refer :all]
            [cdisc-library-api.specs.cdashig-product-ref :refer :all]
            [cdisc-library-api.specs.cdashig-domain-ref :refer :all]
            [cdisc-library-api.specs.root-cdashig-domain-field-ref :refer :all]
            [cdisc-library-api.specs.cdashig-domain-field-ref :refer :all]
            [cdisc-library-api.specs.sdtm-class-variable-ref-target :refer :all]
            [cdisc-library-api.specs.sdtmig-dataset-variable-ref-target :refer :all]
            )
  (:import (java.io File)))


(def cdashig-domain-field-links-data
  {
   (ds/opt :self) cdashig-domain-field-ref-spec
   (ds/opt :codelist) (s/coll-of root-ct-codelist-ref-element-spec)
   (ds/opt :parentProduct) cdashig-product-ref-spec
   (ds/opt :parentDomain) cdashig-domain-ref-spec
   (ds/opt :rootItem) root-cdashig-domain-field-ref-spec
   (ds/opt :priorVersion) cdashig-domain-field-ref-spec
   (ds/opt :sdtmClassMappingTargets) (s/coll-of sdtm-class-variable-ref-target-spec)
   (ds/opt :sdtmigDatasetMappingTargets) (s/coll-of sdtmig-dataset-variable-ref-target-spec)
   })

(def cdashig-domain-field-links-spec
  (ds/spec
    {:name ::cdashig-domain-field-links
     :spec cdashig-domain-field-links-data}))
