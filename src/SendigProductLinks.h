/*
 * SendigProductLinks.h
 *
 * 
 */

#ifndef _SendigProductLinks_H_
#define _SendigProductLinks_H_


#include <string>
#include "SdtmProductRef.h"
#include "SendigProductRef.h"
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

class SendigProductLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	SendigProductLinks();
	SendigProductLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~SendigProductLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SendigProductRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(SendigProductRef  self);
	/*! \brief Get 
	 */
	SdtmProductRef getModel();

	/*! \brief Set 
	 */
	void setModel(SdtmProductRef  model);
	/*! \brief Get 
	 */
	SendigProductRef getPriorVersion();

	/*! \brief Set 
	 */
	void setPriorVersion(SendigProductRef  priorVersion);

private:
	SendigProductRef self;
	SdtmProductRef model;
	SendigProductRef priorVersion;
	void __init();
	void __cleanup();

};
}
}

#endif /* _SendigProductLinks_H_ */
