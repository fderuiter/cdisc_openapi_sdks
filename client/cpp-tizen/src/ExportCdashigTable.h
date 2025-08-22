/*
 * ExportCdashigTable.h
 *
 * 
 */

#ifndef _ExportCdashigTable_H_
#define _ExportCdashigTable_H_


#include <string>
#include "ExportCdashigDomainVariablesRow.h"
#include "ExportCdashigScenarioVariablesRow.h"
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

class ExportCdashigTable : public Object {
public:
	/*! \brief Constructor.
	 */
	ExportCdashigTable();
	ExportCdashigTable(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ExportCdashigTable();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	std::list<ExportCdashigDomainVariablesRow> getDomainvariables();

	/*! \brief Set 
	 */
	void setDomainvariables(std::list <ExportCdashigDomainVariablesRow> domainvariables);
	/*! \brief Get 
	 */
	std::list<ExportCdashigScenarioVariablesRow> getScenariovariables();

	/*! \brief Set 
	 */
	void setScenariovariables(std::list <ExportCdashigScenarioVariablesRow> scenariovariables);

private:
	std::list <ExportCdashigDomainVariablesRow>domainvariables;
	std::list <ExportCdashigScenarioVariablesRow>scenariovariables;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ExportCdashigTable_H_ */
