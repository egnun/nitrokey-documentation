(window.webpackJsonp=window.webpackJsonp||[]).push([[54],{512:function(t,e,o){"use strict";o.r(e);var i=o(33),r=Object(i.a)({},(function(){var t=this,e=t.$createElement,o=t._self._c||e;return o("ContentSlotsDistributor",{attrs:{"slot-key":t.$parent.slotKey}},[o("h1",{attrs:{id:"nitrokey-fido2-with-windows"}},[o("a",{staticClass:"header-anchor",attrs:{href:"#nitrokey-fido2-with-windows"}},[t._v("#")]),t._v(" Nitrokey FIDO2 with Windows")]),t._v(" "),o("p",[t._v("The Nitrokey FIDO2 supports two-factor authentication (2FA) and passwordless authentication:")]),t._v(" "),o("ul",[o("li",[t._v("With "),o("strong",[t._v("passwordless authentication")]),t._v(", entering a password is replaced by logging in with the Nitrokey FIDO2 and a PIN.")]),t._v(" "),o("li",[t._v("With "),o("strong",[t._v("two-factor authentication")]),t._v(" (2FA), the Nitrokey FIDO2 is checked in addition to the password.")])]),t._v(" "),o("p",[t._v("The Nitrokey FIDO2 can be used with any current browser.")]),t._v(" "),o("div",{staticClass:"custom-block tip"},[o("p",{staticClass:"custom-block-title"},[t._v("IMPORTANT")]),t._v(" "),o("p",[t._v("The Nitrokey App can not be used for the Nitrokey FIDO2.")])]),t._v(" "),o("h2",{attrs:{id:"passwordless-authentication"}},[o("a",{staticClass:"header-anchor",attrs:{href:"#passwordless-authentication"}},[t._v("#")]),t._v(" Passwordless authentication")]),t._v(" "),o("ol",[o("li",[t._v("Open a web page that supports FIDO2 (currently only "),o("a",{attrs:{href:"https://www.microsoft.com",target:"_blank",rel:"noopener noreferrer"}},[t._v("Microsoft"),o("OutboundLink")],1),t._v(").")]),t._v(" "),o("li",[t._v('Log in to the website and go to "Set up security key" in the security settings of your account.')]),t._v(" "),o("li",[t._v("Now you need to set a PIN for your Nitrokey FIDO2.")]),t._v(" "),o("li",[t._v("Touch the button of your Nitrokey FIDO2 when prompted.")]),t._v(" "),o("li",[t._v("Once you have successfully configured the device, you will need to activate your Nitrokey FIDO2 this way each time you log in, after entering your PIN.")])]),t._v(" "),o("h2",{attrs:{id:"two-factor-authentication-2fa"}},[o("a",{staticClass:"header-anchor",attrs:{href:"#two-factor-authentication-2fa"}},[t._v("#")]),t._v(" Two-Factor Authentication (2FA)")]),t._v(" "),o("ol",[o("li",[t._v("Open one of the "),o("a",{attrs:{href:"https://www.dongleauth.info/",target:"_blank",rel:"noopener noreferrer"}},[t._v("websites that support FIDO U2F"),o("OutboundLink")],1),t._v(".")]),t._v(" "),o("li",[t._v("Log in to the website and enable two-factor authentication in your account settings. (In most cases you will find a link to the documentation of the supported web service at "),o("a",{attrs:{href:"https://www.dongleauth.info/",target:"_blank",rel:"noopener noreferrer"}},[t._v("dongleauth.info"),o("OutboundLink")],1),t._v(")")]),t._v(" "),o("li",[t._v("Register your Nitrokey FIDO2 in the account settings by touching the button to activate the Nitrokey FIDO2. After you have successfully configured the device, you must activate the Nitrokey FIDO2 this way each time you log in.")])]),t._v(" "),o("p",[t._v("Checkout the "),o("a",{attrs:{href:"https://www.nitrokey.com/documentation/applications#p:nitrokey-fido2-u2f&os:all",target:"_blank",rel:"noopener noreferrer"}},[t._v("various use cases and supported applications"),o("OutboundLink")],1),t._v(".")]),t._v(" "),o("div",{staticClass:"custom-block tip"},[o("p",{staticClass:"custom-block-title"},[t._v("NOTE")]),t._v(" "),o("p",[t._v("Google only accepts the Chrome browser for registering the Nitrokey FIDO2 Logging in works fine with Firefox though.")])]),t._v(" "),o("h3",{attrs:{id:"touch-button-and-led-behavior"}},[o("a",{staticClass:"header-anchor",attrs:{href:"#touch-button-and-led-behavior"}},[t._v("#")]),t._v(" Touch Button and LED Behavior")]),t._v(" "),o("p",[t._v("For convenience, the first FIDO operation is automatically accepted within two seconds after connecting Nitrokey FIDO2. In this case touching the touch button is not required.")]),t._v(" "),o("p",[t._v("To avoid accidental and malicious reset of the Nitrokey, the required touch confirmation time for the FIDO2 reset operation is longer and with a distinct LED behavior (red LED light) than normal operations.")]),t._v(" "),o("p",[t._v("For convenience, multiple operations can be accepted with a single touch. For this, keep the touch button touched for up to 10 seconds.")]),t._v(" "),o("table",[o("thead",[o("tr",[o("th",[t._v("LED Color")]),t._v(" "),o("th",[t._v("Event")]),t._v(" "),o("th",[t._v("Time Period")]),t._v(" "),o("th",[t._v("Comments")])])]),t._v(" "),o("tbody",[o("tr",[o("td",[t._v("Any (blinking)")]),t._v(" "),o("td",[t._v("Awaiting for touch")]),t._v(" "),o("td",[t._v("Until touch is confirmed or timed out")]),t._v(" "),o("td")]),t._v(" "),o("tr",[o("td",[t._v("Any (blinking faster)")]),t._v(" "),o("td",[t._v("Touch detected, counting seconds")]),t._v(" "),o("td",[t._v("Until touch is confirmed or timed out")]),t._v(" "),o("td")]),t._v(" "),o("tr",[o("td",[t._v("White (blinks)")]),t._v(" "),o("td",[t._v("Touch request for FIDO registration or authentication operation")]),t._v(" "),o("td"),t._v(" "),o("td",[t._v("Requires 1 second touch to complete; timeout is usually about 30 seconds")])]),t._v(" "),o("tr",[o("td",[t._v("Yellow (blinks)")]),t._v(" "),o("td",[t._v("Touch request for configuration operation")]),t._v(" "),o("td"),t._v(" "),o("td",[t._v("Requires 5 seconds touch to complete; e.g. used for activating firmware update mode")])]),t._v(" "),o("tr",[o("td",[t._v("Red (blinks)")]),t._v(" "),o("td",[t._v("Touch request for reset operation")]),t._v(" "),o("td",[t._v("Available only during the very first 10 seconds after Nitrokey is powered")]),t._v(" "),o("td",[t._v("Requires 5 seconds touch to complete; e.g. used for FIDO2 reset operation")])]),t._v(" "),o("tr",[o("td",[t._v("Green (constant)")]),t._v(" "),o("td",[t._v("Touch accepted, Nitrokey is active and accepting further FIDO2 operations")]),t._v(" "),o("td",[t._v("After touch was registered, 10 seconds timeout")]),t._v(" "),o("td",[t._v('For the FIDO registration or authentication operations after a confirmation Nitrokey enters into "activation" mode, auto-accepting any following mentioned operations until touch button is released, but not longer than 10 seconds')])]),t._v(" "),o("tr",[o("td",[t._v("Blue (constant)")]),t._v(" "),o("td",[t._v("Touch consumed - accepted and used up by the operation")]),t._v(" "),o("td",[t._v("Until touch is released")]),t._v(" "),o("td",[t._v("Touch consumption here means, that without releasing the touch button, and touching again the Nitrokey will not confirm any new operations")])]),t._v(" "),o("tr",[o("td",[t._v("White "),o("br"),t._v(" (single blink)")]),t._v(" "),o("td",[t._v("Nitrokey ready to work")]),t._v(" "),o("td",[t._v("0.5 seconds after powering up")]),t._v(" "),o("td")]),t._v(" "),o("tr",[o("td",[t._v("- (no LED signal)")]),t._v(" "),o("td",[t._v("Nitrokey is idle")]),t._v(" "),o("td"),t._v(" "),o("td")]),t._v(" "),o("tr",[o("td",[t._v("- (no LED signal)")]),t._v(" "),o("td",[t._v("Auto-accept single FIDO registration or authentication operation")]),t._v(" "),o("td",[t._v("Within first 2 seconds after powering up")]),t._v(" "),o("td",[t._v("Nitrokey is automatically accepting any single FIDO registration or authentication operation upon insertion event - the latter is treated as an equivalent of the touch button registration signal (user presence); the configuration/reset operations are not accepted")])]),t._v(" "),o("tr",[o("td",[t._v("All colors")]),t._v(" "),o("td",[t._v("Nitrokey is in Firmware Update mode")]),t._v(" "),o("td",[t._v("Active until firmware update operation is successful, or until reinsertion")]),t._v(" "),o("td",[t._v("If the firmware update fails, the Nitrokey will stay in the this mode until the firmware is written correctly")])])])]),t._v(" "),o("h2",{attrs:{id:"nitrokey-fido2-reset-with-windows-10"}},[o("a",{staticClass:"header-anchor",attrs:{href:"#nitrokey-fido2-reset-with-windows-10"}},[t._v("#")]),t._v(" Nitrokey FIDO2 Reset with Windows 10")]),t._v(" "),o("p",[t._v("To avoid accidental and malicious reset of the Nitrokey, the required touch confirmation time for the FIDO2 reset operation is longer and with a distinct LED behavior (red LED light) than normal operations.")]),t._v(" "),o("p",[t._v("If the total taken time for execution will be more than 10 seconds, the Windows OS' user interface will report failure. Reset operation is executed on the Nitrokey even after the latter is reported, as long as the user's touch will be registered before the Nitrokey's internal operation timeout (touch confirmation is shown with the blue color).")]),t._v(" "),o("details",[o("summary",[t._v("Technical details")]),t._v(" "),o("p",[t._v("The FIDO2 reset operation under Windows consist of two operations:")]),t._v(" "),o("ol",[o("li",[t._v("single FIDO2 operation")]),t._v(" "),o("li",[t._v("actual FIDO2 reset operation")])]),t._v(" "),o("p",[t._v('The first operation should be automatically accepted upon insertion, and user should be required to only confirm the second operation. See "VM notes" below for additional information.\n')])]),o("p"),t._v(" "),o("h3",{attrs:{id:"example-scenarios"}},[o("a",{staticClass:"header-anchor",attrs:{href:"#example-scenarios"}},[t._v("#")]),t._v(" Example scenarios")]),t._v(" "),o("h4",{attrs:{id:"successful"}},[o("a",{staticClass:"header-anchor",attrs:{href:"#successful"}},[t._v("#")]),t._v(" Successful")]),t._v(" "),o("ol",[o("li",[t._v("User activates FIDO2 reset in the Windows 10 user interface")]),t._v(" "),o("li",[t._v("User is asked to remove and insert the Nitrokey once again")]),t._v(" "),o("li",[t._v("User is asked to touch the Nitrokey")]),t._v(" "),o("li",[t._v("Nitrokey starts blinking red")]),t._v(" "),o("li",[t._v("User is asked to single touch the Nitrokey")]),t._v(" "),o("li",[t._v("User touches the Nitrokey for 5 seconds")]),t._v(" "),o("li",[t._v("Nitrokey flashes blue LED, user releases the touch")]),t._v(" "),o("li",[t._v("UI reports success")])]),t._v(" "),o("h4",{attrs:{id:"timeout-failure"}},[o("a",{staticClass:"header-anchor",attrs:{href:"#timeout-failure"}},[t._v("#")]),t._v(" Timeout failure")]),t._v(" "),o("ol",[o("li",[t._v("User activates FIDO2 reset in the Windows 10 user interface")]),t._v(" "),o("li",[t._v("User is asked to remove and insert the Nitrokey once again")]),t._v(" "),o("li",[t._v("User is asked to touch the Nitrokey")]),t._v(" "),o("li",[t._v("Nitrokey starts blinking red")]),t._v(" "),o("li",[t._v("User is not confirming the operation within 10 seconds")]),t._v(" "),o("li",[t._v("UI reports failure")])]),t._v(" "),o("h4",{attrs:{id:"vm-notes"}},[o("a",{staticClass:"header-anchor",attrs:{href:"#vm-notes"}},[t._v("#")]),t._v(" VM notes")]),t._v(" "),o("p",[t._v("In case where the Nitrokey is attached through a Virtual Machine instance to Windows 10 OS, the powering up and enumeration times might be different, which could result in the very first FIDO operation not being accepted automatically. In such case it has to be confirmed by hand.")]),t._v(" "),o("p",[t._v("Similarly, the reset operation could fail, if the OS will send the reset operation request after passing the first 10 seconds of Nitrokey being powered up.")])])}),[],!1,null,null,null);e.default=r.exports}}]);