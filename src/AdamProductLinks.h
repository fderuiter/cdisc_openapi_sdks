/*
 * AdamProductLinks.h
 *
 * 
 */

#ifndef _AdamProductLinks_H_
#define _AdamProductLinks_H_


#include <string>
#include "AdamProductRef.h"
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

class AdamProductLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	AdamProductLinks();
	AdamProductLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~AdamProductLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	AdamProductRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(AdamProductRef  self);
	/*! \brief Get 
	 */
	AdamProductRef getModel();

	/*! \brief Set 
	 */
	void setModel(AdamProductRef  model);
	/*! \brief Get 
	 */
	AdamProductRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(AdamProductRef  priorVersion);

private:
	AdamProductRef self;
	AdamProductRef model;
	AdamProductRef priorVersion;
	void __init();
	void __cleanup();

};
}
}

#endif /* _AdamProductLinks_H_ */
