/*
 * ExportSdtmVariablesTable.h
 *
 * 
 */

#ifndef _ExportSdtmVariablesTable_H_
#define _ExportSdtmVariablesTable_H_


#include <string>
#include "ExportSdtmClassVariablesRow.h"
#include "ExportSdtmDatasetVariablesRow.h"
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

class ExportSdtmVariablesTable : public Object {
public:
	/*! \brief Constructor.
	 */
	ExportSdtmVariablesTable();
	ExportSdtmVariablesTable(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ExportSdtmVariablesTable();

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

private:
	std::list <ExportSdtmClassVariablesRow>classvariables;
	std::list <ExportSdtmDatasetVariablesRow>datasetvariables;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ExportSdtmVariablesTable_H_ */
