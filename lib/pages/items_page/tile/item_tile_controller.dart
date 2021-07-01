import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';
import 'package:baby_step_up_app/model/model.dart';

import 'item_tile_state.dart';

export 'item_tile_state.dart';

class ItemTileController extends StateNotifier<ItemTileState> {
  ItemTileController(
    this._read, {
    required this.id,
  }) : super(ItemTileState()) {
    _cartControllerRemoveLister =
        _read(cartProvider.notifier).addListener((CartState) {
      final cartItem = CartState.cartItem(stock.item);
      final cartItemQuantity = cartItem?.quantity ?? 0;
      state = state.copyWith(
        quantity: stock.quantity - cartItemQuantity,
      );
    });
  }

  final Reader _read;

  final int id;
  late final VoidCallback _cartControllerRemoveLister;

  ItemStock get stock => _read(itemsProvider).stock(id);

  void addToCart() => _read(cartProvider.notifier).add(stock.item);

  @override
  void dispose() {
    _cartControllerRemoveLister();
    super.dispose();
  }
}
