/*
 * ExportSdtmigWorkbook.h
 *
 * 
 */

#ifndef _ExportSdtmigWorkbook_H_
#define _ExportSdtmigWorkbook_H_


#include <string>
#include "ExportSdtmigDatasetsRow.h"
#include "ExportSdtmigVariablesRow.h"
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

class ExportSdtmigWorkbook : public Object {
public:
	/*! \brief Constructor.
	 */
	ExportSdtmigWorkbook();
	ExportSdtmigWorkbook(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ExportSdtmigWorkbook();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::list<ExportSdtmigVariablesRow> getVariables();

	/*! \brief Set 
	 */
	void setVariables(std::list <ExportSdtmigVariablesRow> variables);
	/*! \brief Get 
	 */
	std::list<ExportSdtmigDatasetsRow> getDatasets();

	/*! \brief Set 
	 */
	void setDatasets(std::list <ExportSdtmigDatasetsRow> datasets);

private:
	std::list <ExportSdtmigVariablesRow>variables;
	std::list <ExportSdtmigDatasetsRow>datasets;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ExportSdtmigWorkbook_H_ */
