/*
 * QrsItemsLinks.h
 *
 * 
 */

#ifndef _QrsItemsLinks_H_
#define _QrsItemsLinks_H_


#include <string>
#include "QrsItemRefElement.h"
#include "QrsItemsRef.h"
#include "QrsProductRef.h"
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

class QrsItemsLinks : public Object {
public:
	/*! \brief Constructor.
	 */
	QrsItemsLinks();
	QrsItemsLinks(char* str);

	/*! \brief Destructor.
	 */
	virtual ~QrsItemsLinks();

	/*! \brief Retrieve a string JSON representation of this class.
	 */
	char* toJson();

	/*! \brief Fills in members of this class from JSON string representing it.
	 */
	void fromJson(char* jsonStr);

	/*! \brief Get 
	 */
	QrsItemsRef getSelf();

	/*! \brief Set 
	 */
	void setSelf(QrsItemsRef  self);
	/*! \brief Get 
	 */
	QrsProductRef getParentProduct();

	/*! \brief Set 
	 */
	void setParentProduct(QrsProductRef  parentProduct);
	/*! \brief Get 
	 */
	std::list<QrsItemRefElement> getItems();

	/*! \brief Set 
	 */
	void setItems(std::list <QrsItemRefElement> items);

private:
	QrsItemsRef self;
	QrsProductRef parentProduct;
	std::list <QrsItemRefElement>items;
	void __init();
	void __cleanup();

};
}
}

#endif /* _QrsItemsLinks_H_ */
