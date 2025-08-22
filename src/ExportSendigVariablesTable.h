/*
 * ExportSendigVariablesTable.h
 *
 * 
 */

#ifndef _ExportSendigVariablesTable_H_
#define _ExportSendigVariablesTable_H_


#include <string>
#include "ExportSendigVariablesRow.h"
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

class ExportSendigVariablesTable : public Object {
public:
	/*! \brief Constructor.
	 */
	ExportSendigVariablesTable();
	ExportSendigVariablesTable(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ExportSendigVariablesTable();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::list<ExportSendigVariablesRow> getVariables();

	/*! \brief Set 
	 */
	void setVariables(std::list <ExportSendigVariablesRow> variables);

private:
	std::list <ExportSendigVariablesRow>variables;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ExportSendigVariablesTable_H_ */
