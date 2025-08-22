/*
 * ExportAdamVariablesTable.h
 *
 * 
 */

#ifndef _ExportAdamVariablesTable_H_
#define _ExportAdamVariablesTable_H_


#include <string>
#include "ExportAdamVariablesRow.h"
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

class ExportAdamVariablesTable : public Object {
public:
	/*! \brief Constructor.
	 */
	ExportAdamVariablesTable();
	ExportAdamVariablesTable(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ExportAdamVariablesTable();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::list<ExportAdamVariablesRow> getVariables();

	/*! \brief Set 
	 */
	void setVariables(std::list <ExportAdamVariablesRow> variables);

private:
	std::list <ExportAdamVariablesRow>variables;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ExportAdamVariablesTable_H_ */
