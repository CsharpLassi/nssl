import 'package:testProject/models/shopping_item.dart';
import 'package:testProject/manager/manager_export.dart';
import 'dart:async';

class ShoppingList {
  int id;
  String name;
  List<ShoppingItem> shoppingItems;

  static Future<ShoppingList> load(int id) async {
    var items =
        await FileManager.readAsLines("ShoppingLists/${id.toString()}.sl");
    var crossedOut = await loadCrossedOut(id);
    return new ShoppingList()
      ..id = id
      ..name = items[0]
      ..shoppingItems = items.sublist(1).where((s) => s != "").map((s) {
        var split = s.split("\u{1F}");
        var item = new ShoppingItem()
          ..name = split[0]
          ..amount = int.parse(split[1])
          ..id = int.parse(split[2])
          ..crossedOut = crossedOut.containsKey(int.parse(split[2])) ?? false;
        return item;
      }).toList();
  }

  Future save() async {
    var filename = "ShoppingLists/${id.toString()}.sl";
    if (FileManager.fileExists(filename))
      await FileManager.deleteFile(filename);
    await FileManager.createFile(filename);
    await FileManager.writeln(filename, name);

    for (var item in shoppingItems) {
      await FileManager.writeln(filename, item.toString(), append: true);
    }
  }

  Future saveCrossedOut() async {
    var filename = "ShoppingListsCo/${id.toString()}co.sl";
    if (FileManager.fileExists(filename))
      await FileManager.deleteFile(filename);
    await FileManager.createFile(filename);
    for (var item in shoppingItems.where((x) => x.crossedOut)) {
      await FileManager.writeln(filename, item.id.toString(), append: true);
    }
  }

  static Future<Map<int, bool>> loadCrossedOut(int listId) async {
    if (!FileManager.fileExists("ShoppingListsCo/${listId.toString()}co.sl"))
      return new Map<int, bool>();
    var items = await FileManager
        .readAsLines("ShoppingListsCo/${listId.toString()}co.sl");
    var map = new Map<int, bool>();
    for (var item in items.where((x) => x != null && x != ""))
      if (item != null) map.addAll({int.parse(item): true});
    return map;
  }
}