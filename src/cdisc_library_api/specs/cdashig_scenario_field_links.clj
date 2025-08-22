(ns cdisc-library-api.specs.cdashig-scenario-field-links
  (:require [clojure.spec.alpha :as s]
            [spec-tools.data-spec :as ds]
            [cdisc-library-api.specs.cdashig-scenario-field-ref :refer :all]
            [cdisc-library-api.specs.root-ct-codelist-ref-element :refer :all]
            [cdisc-library-api.specs.cdashig-product-ref :refer :all]
            [cdisc-library-api.specs.cdashig-domain-ref :refer :all]
            [cdisc-library-api.specs.cdashig-scenario-ref :refer :all]
            [cdisc-library-api.specs.root-cdashig-scenario-field-ref :refer :all]
            [cdisc-library-api.specs.cdashig-scenario-field-ref :refer :all]
            [cdisc-library-api.specs.sdtmig-dataset-variable-ref-target :refer :all]
            )
  (:import (java.io File)))


(def cdashig-scenario-field-links-data
  {
   (ds/opt :self) cdashig-scenario-field-ref-spec
   (ds/opt :codelist) (s/coll-of root-ct-codelist-ref-element-spec)
   (ds/opt :parentProduct) cdashig-product-ref-spec
   (ds/opt :parentDomain) cdashig-domain-ref-spec
   (ds/opt :parentScenario) cdashig-scenario-ref-spec
   (ds/opt :rootItem) root-cdashig-scenario-field-ref-spec
   (ds/opt :priorVersion) cdashig-scenario-field-ref-spec
   (ds/opt :sdtmigDatasetMappingTargets) (s/coll-of sdtmig-dataset-variable-ref-target-spec)
   })

(def cdashig-scenario-field-links-spec
  (ds/spec
    {:name ::cdashig-scenario-field-links
     :spec cdashig-scenario-field-links-data}))
