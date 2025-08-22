/*
 * ExportSdtmigDatasetsTable.h
 *
 * 
 */

#ifndef _ExportSdtmigDatasetsTable_H_
#define _ExportSdtmigDatasetsTable_H_


#include <string>
#include "ExportSdtmigDatasetsRow.h"
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

class ExportSdtmigDatasetsTable : public Object {
public:
	/*! \brief Constructor.
	 */
	ExportSdtmigDatasetsTable();
	ExportSdtmigDatasetsTable(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ExportSdtmigDatasetsTable();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::list<ExportSdtmigDatasetsRow> getDatasets();

	/*! \brief Set 
	 */
	void setDatasets(std::list <ExportSdtmigDatasetsRow> datasets);

private:
	std::list <ExportSdtmigDatasetsRow>datasets;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ExportSdtmigDatasetsTable_H_ */
