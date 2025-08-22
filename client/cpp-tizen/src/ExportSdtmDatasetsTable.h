/*
 * ExportSdtmDatasetsTable.h
 *
 * 
 */

#ifndef _ExportSdtmDatasetsTable_H_
#define _ExportSdtmDatasetsTable_H_


#include <string>
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

class ExportSdtmDatasetsTable : public Object {
public:
	/*! \brief Constructor.
	 */
	ExportSdtmDatasetsTable();
	ExportSdtmDatasetsTable(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ExportSdtmDatasetsTable();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::list<ExportSdtmDatasetsRow> getDatasets();

	/*! \brief Set 
	 */
	void setDatasets(std::list <ExportSdtmDatasetsRow> datasets);

private:
	std::list <ExportSdtmDatasetsRow>datasets;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ExportSdtmDatasetsTable_H_ */
