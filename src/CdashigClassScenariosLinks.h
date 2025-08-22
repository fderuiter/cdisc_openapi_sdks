/*
 * CdashigClassScenariosLinks.h
 *
 * 
 */

#ifndef _CdashigClassScenariosLinks_H_
#define _CdashigClassScenariosLinks_H_


#include <string>
#include "CdashigClassScenariosRef.h"
#include "CdashigScenarioRefElement.h"
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

class CdashigClassScenariosLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	CdashigClassScenariosLinks();
	CdashigClassScenariosLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CdashigClassScenariosLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CdashigClassScenariosRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(CdashigClassScenariosRef  self);
	/*! \brief Get 
	 */
	std::list<CdashigScenarioRefElement> getScenarios();

	/*! \brief Set 
	 */
	void setScenarios(std::list <CdashigScenarioRefElement> scenarios);

private:
	CdashigClassScenariosRef self;
	std::list <CdashigScenarioRefElement>scenarios;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CdashigClassScenariosLinks_H_ */
