/*
 * ProductgroupQrsLinks.h
 *
 * 
 */

#ifndef _ProductgroupQrsLinks_H_
#define _ProductgroupQrsLinks_H_


#include <string>
#include "ProductgroupRef.h"
#include "QrsRefElement.h"
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

class ProductgroupQrsLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	ProductgroupQrsLinks();
	ProductgroupQrsLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~ProductgroupQrsLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	ProductgroupRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(ProductgroupRef  self);
	/*! \brief Get 
	 */
	std::list<QrsRefElement> getQrs();

	/*! \brief Set 
	 */
	void setQrs(std::list <QrsRefElement> qrs);

private:
	ProductgroupRef self;
	std::list <QrsRefElement>qrs;
	void __init();
	void __cleanup();

};
}
}

#endif /* _ProductgroupQrsLinks_H_ */
