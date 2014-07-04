<?php
defined("PHP5_PHP") or die("Application is stopping!!!");
global $lang;
$lang['_BLANK_MSG_']                           = "%s cannot be left blank";
$lang['_CHOOSE_MSG_']                           = "Please choose a %s from the list";
$lang['_UPDATE_MSG_']                           = "Updated successfully!";
$lang['_INVALID_MSG_']                           = "%s is invalid";
// Paging
$lang['page_number_cap'] = 'Page';
$lang['page_first']		 = 'First';
$lang['page_last']		 = 'Last';

// Account
$lang['_SELECT_USER_TYPE']	= "- Select All -";
$lang['_ACCOUNT_MANAGER']	= "Account manager";
$lang['_USER_TYPE']			= "User type";
$lang['_WORKSHOP']			= "Workshops";
$lang['_NAME']				= "Name";
$lang['_EMAIL']				= "Email Address";
$lang['_DESIGNATION']		= "Designation";
$lang['_UNIT']				= "Unit";
$lang['_CONTACT_NUMBER']	= "Contact number";
$lang['_NEW_PASSWORD']		= "New Password";
$lang['_VERIFY_PASSWORD']	= "Verify Password";
$lang['_MOBILE']			= "Mobile";
$lang['_IMAGE']				= "Image";
$lang['_REMARKS']			= "Remarks";

$lang['_SELECT_ONE']		= "- Select one -";
$lang['_KEYWORD']			= "Keyword";
$lang['_SEGMENT']			= "Segment";
$lang['_TYPE']				= "Type";
$lang['_COUNTRIES']			= "Countries";
$lang['_MSS_DEL_USER']		= "Delete account: ID#%s - %s ?";

// Button
//////////////////////////////////////////////
$lang['_LOGOUT']			= "Logout";
$lang['_LOGIN']				= "Login";
$lang['_CREATE']			= "Create";
$lang['_DELETE']			= "DELETE";
$lang['_EDIT']				= "EDIT";
$lang['_CANCEL']			= "Cancel";
$lang['_RESET']				= "Reset";
$lang['_SEARCH']			= "Search";
$lang['_UPDATE']			= "Update";
$lang['_ADD_ITEM']			= "Add item";
$lang['_BACK']				= "Back";
$lang['_CREATE_QUIZ']		= "Create Quiz";
$lang['_LIST_QUIZ']			= "List/Edit Quiz";
$lang['_CREATE_QUESTION']	= "Create Question";
$lang['_LIST_QUESTION']		= "List/Edit question";
$lang['_ADD']				= "Add";
$lang['_REMOVE']			= "Remove";
// Message
$lang['_MSS_NAME']			= "Please enter Name.";
$lang['_MSS_EMAIL']			= "Please enter Email Address.";
$lang['_MSS_EMAIL1']		= "Invalid Email Address. Please try again.";
$lang['_MSS_EMAIL2']		= "Dupplicate Email Address. Please try again.";
$lang['_MSS_PASSWORD']		= "Please enter Password.";
$lang['_MSS_PASSWORD1']		= "Invalid Password. Please try again.";
$lang['_MSS_LOGIN_FAIL']	= "Login fail. Please try again";
$lang['_MSS_CANT_SAVE']		= "Error. Please try again.";
$lang['_MSS_SAVE_SUCCESSFULL']		= "Data saved.";

$lang['_MSS_DEALER_5_']	= "
Dear Adminstrator

This is the status of the upload conducted on %s

Successful - %d records
Unsuccessful -- %d records

%s:
 
%s

This is a system generated email update.


";
$lang['_MSS_DEALER_6_']	= "Upload Report - %s";
$lang['_MSS_DEALER_7_']	= "Sorry, email cannot be sent as dealer has not updated email adddress.";

$lang['_MSS_DEALER_8_']	= "Files (Mailmerge) - %s";
$lang['_MSS_DEALER_9_']	= "
Dear Adminstrator

Please refer to attached file for details about dealers that do not have email addresses, based on imported file name %s imported on %s.

This is a system generated email update.


";