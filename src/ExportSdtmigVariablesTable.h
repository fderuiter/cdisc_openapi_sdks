/*
 * ExportSdtmigVariablesTable.h
 *
 * 
 */

#ifndef _ExportSdtmigVariablesTable_H_
#define _ExportSdtmigVariablesTable_H_


#include <string>
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

class ExportSdtmigVariablesTable : public Object {
public:
	/*! \brief Constructor.
	 */
	ExportSdtmigVariablesTable();
	ExportSdtmigVariablesTable(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ExportSdtmigVariablesTable();

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

private:
	std::list <ExportSdtmigVariablesRow>variables;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ExportSdtmigVariablesTable_H_ */
