/*
 * AdamDatastructureVariablesLinks.h
 *
 * 
 */

#ifndef _AdamDatastructureVariablesLinks_H_
#define _AdamDatastructureVariablesLinks_H_


#include <string>
#include "AdamDatastructureVariablesRef.h"
#include "AdamProductRef.h"
#include "AdamVariableRefElement.h"
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

class AdamDatastructureVariablesLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	AdamDatastructureVariablesLinks();
	AdamDatastructureVariablesLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~AdamDatastructureVariablesLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	AdamDatastructureVariablesRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(AdamDatastructureVariablesRef  self);
	/*! \brief Get 
	 */
	AdamProductRef getParentProduct();

	/*! \brief Set 
	 */
	void setParentProduct(AdamProductRef  parentProduct);
	/*! \brief Get 
	 */
	AdamDatastructureVariablesRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(AdamDatastructureVariablesRef  priorVersion);
	/*! \brief Get 
	 */
	std::list<AdamVariableRefElement> getAnalysisVariables();

	/*! \brief Set 
	 */
	void setAnalysisVariables(std::list <AdamVariableRefElement> analysisVariables);

private:
	AdamDatastructureVariablesRef self;
	AdamProductRef parentProduct;
	AdamDatastructureVariablesRef priorVersion;
	std::list <AdamVariableRefElement>analysisVariables;
	void __init();
	void __cleanup();

};
}
}

#endif /* _AdamDatastructureVariablesLinks_H_ */
