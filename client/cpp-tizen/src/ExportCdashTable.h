/*
 * ExportCdashTable.h
 *
 * 
 */

#ifndef _ExportCdashTable_H_
#define _ExportCdashTable_H_


#include <string>
#include "ExportCdashClassVariablesRow.h"
#include "ExportCdashDomainVariablesRow.h"
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

class ExportCdashTable : public Object {
public:
	/*! \brief Constructor.
	 */
	ExportCdashTable();
	ExportCdashTable(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ExportCdashTable();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::list<ExportCdashClassVariablesRow> getClassvariables();

	/*! \brief Set 
	 */
	void setClassvariables(std::list <ExportCdashClassVariablesRow> classvariables);
	/*! \brief Get 
	 */
	std::list<ExportCdashDomainVariablesRow> getDomainvariables();

	/*! \brief Set 
	 */
	void setDomainvariables(std::list <ExportCdashDomainVariablesRow> domainvariables);

private:
	std::list <ExportCdashClassVariablesRow>classvariables;
	std::list <ExportCdashDomainVariablesRow>domainvariables;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ExportCdashTable_H_ */
