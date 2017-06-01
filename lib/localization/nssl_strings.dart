// Copyright 2015 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:intl/intl.dart';
import 'package:flutter/widgets.dart';

// Wrappers for strings that are shown in the UI.  The strings can be
// translated for different locales using the Dart intl package.
//
// Locale-specific values for the strings live in the i18n/*.arb files.
//
// To generate the stock_messages_*.dart files from the ARB files, run:
//   pub run intl:generate_from_arb --output-dir=lib/i18n --generated-file-prefix=stock_ --no-use-deferred-loading lib/stock_strings.dart lib/i18n/stocks_*.arb

class NSSLStrings extends LocaleQueryData {
  static NSSLStrings of(BuildContext context) {
    return LocaleQuery.of(context);
  }

  static final NSSLStrings instance = new NSSLStrings();

  String options() => Intl.message('Options', name: 'options');
  String scanPB() => Intl.message('SCAN', name: 'scanPB');
  String addPB() => Intl.message('ADD', name: 'addPB');
  String searchPB() => Intl.message('SEARCH', name: 'searchPB');
  String deleteCrossedOutPB() => Intl.message('DELETE CROSSED OUT', name: 'deleteCrossedOutPB');
  String addListPB() => Intl.message('ADD LIST', name: 'addListPB');
  String contributors() => Intl.message('Contributors', name: 'contributors');
  String rename() => Intl.message('Rename', name: 'rename');
  String remove() => Intl.message('Remove', name: 'remove');
  String addProduct() => Intl.message('Add Product', name: 'addProduct');
  String addProductWithoutSearch() => Intl.message('Insert the name of the product, without searching in the database', name: 'addProductWithoutSearch');
  String productName() => Intl.message('product name', name: 'productName');
  String messageDeleteAllCrossedOut() => Intl.message('You have deleted all crossed out items', name: 'messageDeleteAllCrossedOut');
  String undo() => Intl.message('UNDO', name: 'undo');
  String removedShoppingListMessage(userShoppinglists) => Intl.message('Removed ${userShoppinglists} ', name: 'removedShoppingListMessage', args:[userShoppinglists]);
  String noListsInDrawerMessage() => Intl.message('here is the place for your lists', name: 'noListsInDrawerMessage');
  String notLoggedInYet() => Intl.message('Not logged in yet', name: 'notLoggedInYet');
  String newNameOfListHint() => Intl.message('The new name of the new list', name: 'newNameOfListHint');
  String listName() => Intl.message('listname', name: 'listName');
  String renameListTitle() => Intl.message('Rename List', name: 'renameListTitle');
  String renameListHint() => Intl.message('The name of the new list', name: 'renameListHint');
  String addNewListTitle() => Intl.message('Add new List', name: 'addNewListTitle');
  String youHaveActionItemMessage() => Intl.message('You have ', name: 'youHaveActionItemMessage');
//  String youHaveActionItemMessage(String action, String item) => Intl.message('You have $action $item', name: 'youHaveActionItemMessage');
  String archived() => Intl.message('archived', name: 'archived');
  String deleted() => Intl.message('deleted', name: 'deleted');
  String youHaveActionNameMessage() => Intl.message('You have ', name: 'youHaveActionNameMessage');
  //String youHaveActionNameMessage(action, name) => Intl.message('You have $action $name', name: 'youHaveActionNameMessage', args:[action, name]);
  String demoteMenu() => Intl.message('Demote', name: 'demoteMenu');
  String promoteMenu() => Intl.message('Promote', name: 'promoteMenu');
  String contributorUser() => Intl.message(" - User", name: 'contributorUser');
  String contributorAdmin() => Intl.message(" - Admin", name: 'contributorAdmin');
  String genericErrorMessageSnackbar() => Intl.message('Something went wrong!\n', name: 'genericErrorMessageSnackbar');
  //String genericErrorMessageSnackbar(error) => Intl.message('Something went wrong!\n$error', name: 'genericErrorMessageSnackbar', args:[error]);
  String nameOfNewContributorHint() => Intl.message('Name of new Contributor', name: 'nameOfNewContributorHint');
  String wasRemovedSuccessfullyMessage() => Intl.message(' was removed successfully', name: 'wasRemovedSuccessfullyMessage');
  String loginSuccessfulMessage() => Intl.message('Login successfull.', name: 'loginSuccessfullMessage');
  String nameEmailRequiredError() => Intl.message('Name or Email is required.', name: 'nameEmailRequiredError');
  String usernameToShortError() => Intl.message('Your username has to be at least 4 characters long', name: 'usernameToShortError');
  String emailRequiredError() => Intl.message('EMail is required.', name: 'emailRequiredError');
  String emailIncorrectFormatError() => Intl.message('The email seems to be in the incorrect format.', name: 'emailIncorrectFormatError');
  String chooseAPassword() => Intl.message('Please choose a password.', name: 'chosseAPassword');
  String login() => Intl.message('Login', name: 'login');
  String usernameOrEmailForLoginHint() => Intl.message('username or email can be used to login', name: 'usernameOrEmailForLoginHint');
  String usernameOrEmailTitle() => Intl.message('Username or Email', name: 'usernameOrEmailTitle');
  String emailTitle() => Intl.message('Email', name: 'emailTitle');
  String choosenPasswordHint() => Intl.message('the password you have choosen', name: 'choosenPasswordHint');
  String password() => Intl.message('Password', name: 'password');
  String loginButton() => Intl.message('LOGIN', name: 'loginButton');
  String registerTextOnLogin() => Intl.message('Don\'t have an account? Create one now.', name: 'registerTextOnLogin');
  String usernameEmptyError() => Intl.message('username has to be filled in', name: 'usernameEmptyError');
  String passwordEmptyError() => Intl.message('password has to be filled in', name: 'passwordEmptyError');
  String emailEmptyError() => Intl.message('email has to be filled in', name: 'emailEmptyError');
  String reenterPasswordError() => Intl.message('passwords doesn\'t match or are empty', name: 'reenterPasswordError');
  String unknownUsernameError() => Intl.message('There is something wrong with your username', name: 'unknownUsernameError');
  String unknownEmailError() => Intl.message('There is something wrong with your email', name: 'unknownEmailError');
  String unknownPasswordError() => Intl.message('There is something wrong with your password', name: 'unknownPasswordError');
  String unknownReenterPasswordError() => Intl.message('There is something wrong with your password validation', name: 'unknownReenterPasswordError');
  String registrationSuccessfulMessage() => Intl.message('Registration successfull.', name: 'registrationSuccessfullMessage');
  String registrationTitle() => Intl.message('Registration.', name: 'registrationTitle');
  String nameEmptyError() => Intl.message('Name is required.', name: 'nameEmptyError');
  String chooseAPasswordPrompt() => Intl.message('Please choose a password.', name: 'chooseAPasswordPrompt');
  String reenterPasswordPrompt() => Intl.message('Please reenter your password.', name: 'reenterPasswordPromt');
  String passwordsDontMatchError() => Intl.message('Passwords don\'t match', name: 'passwordsDontMatchError');
  String usernameRegisterHint() => Intl.message('the name to login and to be found by others', name: 'usernameRegisterHint');
  String username() => Intl.message('Username', name: 'username');
  String emailRegisterHint() => Intl.message('the email to login and to be found by others', name: 'emailRegisterHint');
  String passwordRegisterHint() => Intl.message('the password to secure your account', name: 'passwordRegisterHint');
  String retypePasswordHint() => Intl.message('Re-type your password for validation', name: 'retypePasswordHint');
  String retypePasswordTitle() => Intl.message('Re-type Password', name: 'retypePasswordTitle');
  String registerButton() => Intl.message('REGISTER', name: 'registerButton');
  String discardNewProduct() => Intl.message('Discard new product?', name: 'discardNewProduct');
  String cancelButton() => Intl.message('CANCEL', name: 'cancelButton');
  String acceptButton() => Intl.message('ACCEPT', name: 'acceptButton');
  String discardButton() => Intl.message('DISCARD', name: 'discardButton');
  String fixErrorsBeforeSubmittingPrompt() => Intl.message('Please fix the errors in red before submitting.', name: 'fixErrorsBeforeSubmittingPrompt');
  String newProductTitle() => Intl.message('New Product', name: 'newProductTitle');
  String saveButton() => Intl.message('SAVE', name: 'saveButton');
  String newProductName() => Intl.message('Product Name *', name: 'newProductName');
  String newProductNameHint() => Intl.message('How is this product called?', name: 'newProductNameHint');
  String newProductBrandName() => Intl.message('Brand Name *', name: 'newProductBrandName');
  String newProductBrandNameHint() => Intl.message('Which company sells this product?', name: 'newProductBrandNameHint');
  String newProductWeight() => Intl.message('Weight', name: 'newProductWeight');
  String newProductWeightHint() => Intl.message('What is the normal packaging size?', name: 'newProductWeightHint');
  String newProductAddToList() => Intl.message('Add to current list', name: 'newProductAddToList');
  String newProductStarExplanation() => Intl.message('* indicates required field', name: 'newProductStarExplanation');
  String fieldRequiredError() => Intl.message('This field is required!', name: 'fieldRequiredError');
  String newProductNameToShort() => Intl.message('This name seems to be to short', name: 'newProductNameToShort');
  String addedProduct() => Intl.message(' added', name: 'addedProduct');
  //String addedProduct(name) => Intl.message('Added "$name"', name: 'addedProduct', args: [name]);
  String productWasAlreadyInList() => Intl.message(' was already in list. The amount was increased by 1', name: 'productWasAlreadyInList');
  //String productWasAlreadyInList(name) => Intl.message('"$name" was already in list. The amount was increased by 1', name: 'productWasAlreadyInList', args: [name]);
  String searchProductHint() => Intl.message('Search Product', name: 'searchProductHint');
  String noMoreProductsMessage() => Intl.message('No more products found!', name: 'noMoreProductsMessage');
  String codeText() => Intl.message('Code: ', name: 'codeText');

  String removed() => Intl.message('removed', name: 'removed');
}