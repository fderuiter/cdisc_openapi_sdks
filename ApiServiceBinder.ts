import {interfaces} from 'inversify';

import { AnalysisDataModelAndImplementationGuideADaMAndADaMIGService } from './api/analysisDataModelAndImplementationGuideADaMAndADaMIG.service';
import { CDASHImplementationGuideCDASHIGService } from './api/cDASHImplementationGuideCDASHIG.service';
import { ClinicalDataAcquisitionStandardsHarmonizationCDASHService } from './api/clinicalDataAcquisitionStandardsHarmonizationCDASH.service';
import { ControlledTerminologyCTService } from './api/controlledTerminologyCT.service';
import { DefaultService } from './api/default.service';
import { MeasuresService } from './api/measures.service';
import { SDTMImplementationGuideSDTMIGService } from './api/sDTMImplementationGuideSDTMIG.service';
import { SENDImplementationGuideSENDIGService } from './api/sENDImplementationGuideSENDIG.service';
import { SearchesService } from './api/searches.service';
import { StatusesService } from './api/statuses.service';
import { StudyDataTabulationModelSDTMService } from './api/studyDataTabulationModelSDTM.service';

export class ApiServiceBinder {
    public static with(container: interfaces.Container) {
        container.bind<AnalysisDataModelAndImplementationGuideADaMAndADaMIGService>('AnalysisDataModelAndImplementationGuideADaMAndADaMIGService').to(AnalysisDataModelAndImplementationGuideADaMAndADaMIGService).inSingletonScope();
        container.bind<CDASHImplementationGuideCDASHIGService>('CDASHImplementationGuideCDASHIGService').to(CDASHImplementationGuideCDASHIGService).inSingletonScope();
        container.bind<ClinicalDataAcquisitionStandardsHarmonizationCDASHService>('ClinicalDataAcquisitionStandardsHarmonizationCDASHService').to(ClinicalDataAcquisitionStandardsHarmonizationCDASHService).inSingletonScope();
        container.bind<ControlledTerminologyCTService>('ControlledTerminologyCTService').to(ControlledTerminologyCTService).inSingletonScope();
        container.bind<DefaultService>('DefaultService').to(DefaultService).inSingletonScope();
        container.bind<MeasuresService>('MeasuresService').to(MeasuresService).inSingletonScope();
        container.bind<SDTMImplementationGuideSDTMIGService>('SDTMImplementationGuideSDTMIGService').to(SDTMImplementationGuideSDTMIGService).inSingletonScope();
        container.bind<SENDImplementationGuideSENDIGService>('SENDImplementationGuideSENDIGService').to(SENDImplementationGuideSENDIGService).inSingletonScope();
        container.bind<SearchesService>('SearchesService').to(SearchesService).inSingletonScope();
        container.bind<StatusesService>('StatusesService').to(StatusesService).inSingletonScope();
        container.bind<StudyDataTabulationModelSDTMService>('StudyDataTabulationModelSDTMService').to(StudyDataTabulationModelSDTMService).inSingletonScope();
    }
}
