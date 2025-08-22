/*
 * AdamDatastructureVarsetsLinks.h
 *
 * 
 */

#ifndef _AdamDatastructureVarsetsLinks_H_
#define _AdamDatastructureVarsetsLinks_H_


#include <string>
#include "AdamDatastructureVarsetsRef.h"
#include "AdamProductRef.h"
#include "AdamVarsetRefElement.h"
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

class AdamDatastructureVarsetsLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	AdamDatastructureVarsetsLinks();
	AdamDatastructureVarsetsLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~AdamDatastructureVarsetsLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	AdamDatastructureVarsetsRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(AdamDatastructureVarsetsRef  self);
	/*! \brief Get 
	 */
	AdamProductRef getParentProduct();

	/*! \brief Set 
	 */
	void setParentProduct(AdamProductRef  parentProduct);
	/*! \brief Get 
	 */
	AdamDatastructureVarsetsRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(AdamDatastructureVarsetsRef  priorVersion);
	/*! \brief Get 
	 */
	std::list<AdamVarsetRefElement> getAnalysisVariableSets();

	/*! \brief Set 
	 */
	void setAnalysisVariableSets(std::list <AdamVarsetRefElement> analysisVariableSets);

private:
	AdamDatastructureVarsetsRef self;
	AdamProductRef parentProduct;
	AdamDatastructureVarsetsRef priorVersion;
	std::list <AdamVarsetRefElement>analysisVariableSets;
	void __init();
	void __cleanup();

};
}
}

#endif /* _AdamDatastructureVarsetsLinks_H_ */
