class LoginArgs {
  LoginArgs({this.username, this.eMail, this.pwHash});
  String username;
  String eMail;
  String pwHash;
  toJson() => {"username": username, "eMail": eMail, "pwHash": pwHash};
}

class ChangePasswordArgs {
  ChangePasswordArgs(this.oldPWHash, this.newPWHash);
  String oldPWHash;
  String newPWHash;
  toJson() => {"oldPWHash": "$oldPWHash", "newPWHash": "$newPWHash"};
}

class AddContributorArgs {
  AddContributorArgs(this.name);
  String name;
  toJson() => {"name": "$name"};
}

class TransferOwnershipArgs {
  TransferOwnershipArgs(this.newOwnerId);
  int newOwnerId;
  toJson() => {"newOwnerId": "$newOwnerId"};
}

class ChangeProductArgs {
  ChangeProductArgs(this.change);
  int change;
  toJson() => {"change": "$change"};
}

class ChangeListNameArgs {
  ChangeListNameArgs(this.name);
  String name;
  toJson() => {"name": "$name"};
}

class AddListArgs {
  AddListArgs(this.name);
  String name;
  toJson() => {"name": "$name"};
}

class DeleteProductArgs {
  DeleteProductArgs(this.listId, this.productId);
  int listId;
  int productId;
  toJson() => {"listId": "$listId", "productId": "$productId"};
}

class AddProductArgs {
  String productName;
  String gtin;
  int amount;
  toJson() =>
      {"productName": "$productName", "gtin": "$gtin", "amount": "$amount"};
}

class AddNewProductArgs {
  AddNewProductArgs(this.name, this.gtin);
  String name;
  String gtin;
  toJson() => {"name": "$name", "gtin": "$gtin"};
}

class GetProductsArgs {
  GetProductsArgs(this.page);
  int page;
  toJson() => {"page": "$page"};
}

class DeleteProductsArgs {
  DeleteProductsArgs(this.productIds);
  List<int> productIds;
  toJson() => {"productIds": productIds};
}
