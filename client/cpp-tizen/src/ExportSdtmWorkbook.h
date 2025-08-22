/*
 * ExportSdtmWorkbook.h
 *
 * 
 */

#ifndef _ExportSdtmWorkbook_H_
#define _ExportSdtmWorkbook_H_


#include <string>
#include "ExportSdtmClassVariablesRow.h"
#include "ExportSdtmDatasetVariablesRow.h"
#include "ExportSdtmDatasetsRow.h"
#include <list>
#include "Object.h"

/** \defgroup Models Data Structures for API
 *  Classes containing all the Data Structures needed for calling/returned by API endpoints
 *
 */

namespace Tizen {
namespace ArtikCloud {


/*! \brief 
 *
 *  \ingroup Models
 *
 */

class ExportSdtmWorkbook : public Object {
public:
	/*! \brief Constructor.
	 */
	ExportSdtmWorkbook();
	ExportSdtmWorkbook(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ExportSdtmWorkbook();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::list<ExportSdtmClassVariablesRow> getClassvariables();

	/*! \brief Set 
	 */
	void setClassvariables(std::list <ExportSdtmClassVariablesRow> classvariables);
	/*! \brief Get 
	 */
	std::list<ExportSdtmDatasetVariablesRow> getDatasetvariables();

	/*! \brief Set 
	 */
	void setDatasetvariables(std::list <ExportSdtmDatasetVariablesRow> datasetvariables);
	/*! \brief Get 
	 */
	std::list<ExportSdtmDatasetsRow> getDatasets();

	/*! \brief Set 
	 */
	void setDatasets(std::list <ExportSdtmDatasetsRow> datasets);

private:
	std::list <ExportSdtmClassVariablesRow>classvariables;
	std::list <ExportSdtmDatasetVariablesRow>datasetvariables;
	std::list <ExportSdtmDatasetsRow>datasets;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ExportSdtmWorkbook_H_ */
