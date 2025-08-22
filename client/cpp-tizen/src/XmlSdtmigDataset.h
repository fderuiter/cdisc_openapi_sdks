/*
 * XmlSdtmigDataset.h
 *
 * 
 */

#ifndef _XmlSdtmigDataset_H_
#define _XmlSdtmigDataset_H_


#include <string>
#include "SdtmigDataset.h"
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

class XmlSdtmigDataset : public Object {
public:
	/*! \brief Constructor.
	 */
	XmlSdtmigDataset();
	XmlSdtmigDataset(char* str);

	/*! \brief Destructor.
	 */
	virtual ~XmlSdtmigDataset();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	SdtmigDataset getSelf();

	/*! \brief Set 
	 */
	void setSelf(SdtmigDataset  self);

private:
	SdtmigDataset self;
	void __init();
	void __cleanup();

};
}
}

#endif /* _XmlSdtmigDataset_H_ */
