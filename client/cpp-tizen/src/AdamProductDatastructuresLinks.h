/*
 * AdamProductDatastructuresLinks.h
 *
 * 
 */

#ifndef _AdamProductDatastructuresLinks_H_
#define _AdamProductDatastructuresLinks_H_


#include <string>
#include "AdamDatastructureRefElement.h"
#include "AdamProductDatastructuresRef.h"
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

class AdamProductDatastructuresLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	AdamProductDatastructuresLinks();
	AdamProductDatastructuresLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~AdamProductDatastructuresLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	AdamProductDatastructuresRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(AdamProductDatastructuresRef  self);
	/*! \brief Get 
	 */
	AdamProductDatastructuresRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(AdamProductDatastructuresRef  priorVersion);
	/*! \brief Get 
	 */
	std::list<AdamDatastructureRefElement> getDataStructures();

	/*! \brief Set 
	 */
	void setDataStructures(std::list <AdamDatastructureRefElement> dataStructures);

private:
	AdamProductDatastructuresRef self;
	AdamProductDatastructuresRef priorVersion;
	std::list <AdamDatastructureRefElement>dataStructures;
	void __init();
	void __cleanup();

};
}
}

#endif /* _AdamProductDatastructuresLinks_H_ */
