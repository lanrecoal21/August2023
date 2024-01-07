*** Variables ***
${URL}  https://magento.softwaretestingboard.com/
${BROWSER}  edge
${HOMEPAGE_SIGNIN}  xpath://ul[@class='header links']//li[@class='authorization-link']/a[1]
${USERNAME_FIELD}  xpath://input[@name='login[username]']
${PASSWORD_FIELD}  xpath://input[@name='login[password]']
${SIGNIN_BTN}  xpath://button[@class='action login primary']
${CREATEACC_BTN}  xpath://div[@class='primary']/a
${CREATEACC_FIRSTNAME}   xpath://input[@id='firstname']
${CREATEACC_LASTNAME}  xpath://input[@id='lastname']
${CREATEACC_EMAIL}  xpath://input[@name='email']
${CREATEACC_PASSW}   xpath://input[@title='Password']
${CREATEACC_CONFPASS}  xpath://input[@title='Confirm Password']
${REGISTER_BTN}  xpath://button[@title='Create an Account']
${USERNAME}  ${EMPTY}
${PASSWORD}  ${EMPTY}
${WOMEN_DROPDOWN}  xpath://nav[@class='navigation']/ul/li[2]
${WOMEN_DROPDOWN_TOPS}  xpath://*[text() = 'Tops']
${WOMEN_DROPDOWN_JACKETS}  xpath://*[text() = 'Jackets']
${WOMEN_JACKET1}  xpath://span[@class='product-image-container']//img[@alt='Olivia 1/4 Zip Light Jacket']                                                                      #//a[@href="https://magento.softwaretestingboard.com/olivia-1-4-zip-light-jacket.html"]
${JACKET_SIZE4}  xpath://div[@aria-labelledby="option-label-size-143"]/div[4]
${JACKET_COLOUR}  xpath://div[@aria-labelledby="option-label-color-93"]/div[3]
${JACKET_QTY}   xpath://input[@title='Qty']
${JACKET_ADD2CART}   xpath://button[@title='Add to Cart']
${ADD2CART_SUCCESSMESSAGE}  xapth://div[@data-ui-id='message-success']
${CART_BTN}  xpath://a[@href="https://magento.softwaretestingboard.com/checkout/cart/"]
${PROCEED2CHECKOUT}  xpath://button[@title="Proceed to Checkout"]
${SHIPPING_STREETADD}  xpath://input[@name="street[0]"]
${SHIPPINGADD_PHNE}  xpath://input[@name="telephone"]
${SHIPPINGADD_COUNTRY}  xpath://select[@name="country_id"]
${SHIPPINGADD_PC}  xpath://input[@name="postcode"]
${SHIPPINGADD_REGION}  xpath://select[@name="region_id"]
${SHIPPINGADD_CITY}  xpath://input[@name="city"]
#${SHIPPINGADD_STREETADD}  xpath://input[@name="street[0]"]
${PROCEED2CHECKOUT_NEXT}  xpath://button[@data-role="opc-continue"]
${SHIPPING_METHOD}  xpath://input[@value="tablerate_bestway"]
${PLACE_ORDER}  xpath://button[@class="action primary checkout"]
${CUSTOMER_MENU}  xpath://span[@class='customer-name']/button
${SIGNOUT_LINK}  xpath://div[@class='customer-menu']/ul/li[3]
