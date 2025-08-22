/*
 * ExportSendigDatasetsTable.h
 *
 * 
 */

#ifndef _ExportSendigDatasetsTable_H_
#define _ExportSendigDatasetsTable_H_


#include <string>
#include "ExportSendigDatasetsRow.h"
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

class ExportSendigDatasetsTable : public Object {
public:
	/*! \brief Constructor.
	 */
	ExportSendigDatasetsTable();
	ExportSendigDatasetsTable(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ExportSendigDatasetsTable();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::list<ExportSendigDatasetsRow> getDatasets();

	/*! \brief Set 
	 */
	void setDatasets(std::list <ExportSendigDatasetsRow> datasets);

private:
	std::list <ExportSendigDatasetsRow>datasets;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ExportSendigDatasetsTable_H_ */
