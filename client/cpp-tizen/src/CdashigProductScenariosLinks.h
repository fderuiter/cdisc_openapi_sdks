/*
 * CdashigProductScenariosLinks.h
 *
 * 
 */

#ifndef _CdashigProductScenariosLinks_H_
#define _CdashigProductScenariosLinks_H_


#include <string>
#include "CdashigProductRef.h"
#include "CdashigProductScenariosRef.h"
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

class CdashigProductScenariosLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	CdashigProductScenariosLinks();
	CdashigProductScenariosLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~CdashigProductScenariosLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	CdashigProductScenariosRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(CdashigProductScenariosRef  self);
	/*! \brief Get 
	 */
	CdashigProductRef getParentProduct();

	/*! \brief Set 
	 */
	void setParentProduct(CdashigProductRef  parentProduct);
	/*! \brief Get 
	 */
	std::list<CdashigScenarioRefElement> getScenarios();

	/*! \brief Set 
	 */
	void setScenarios(std::list <CdashigScenarioRefElement> scenarios);

private:
	CdashigProductScenariosRef self;
	CdashigProductRef parentProduct;
	std::list <CdashigScenarioRefElement>scenarios;
	void __init();
	void __cleanup();

};
}
}

#endif /* _CdashigProductScenariosLinks_H_ */
