import 'package:flutter/material.dart';

class SelectSizeWidget extends StatefulWidget {
  final product;
  SelectSizeWidget({
    Key key,
    this.product,
  }) : super(key: key);

  @override
  _SelectSizeWidgetState createState() => _SelectSizeWidgetState();
}

class _SelectSizeWidgetState extends State<SelectSizeWidget> {
  String _selectedSize;
  List _sizes = new List();

  @override
  void initState() {
    setState(() {
      _selectedSize = widget.product.size;
      List _sizeList = [_selectedSize, 'XL', '60'];
      _sizes.addAll(_sizeList);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      // spacing: 8,
      // runSpacing: 8,
      children: _sizes.map((size) {
        return buildSize(size, _selectedSize);
      }).toList(),
    );
  }

  Widget buildSize(size, selectedSize) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 7, vertical: 0),
//      width: 38,
      height: 38,
      child: RawChip(
        label: Text(size),
        labelStyle: TextStyle(color: Theme.of(context).hintColor),
        padding: EdgeInsets.symmetric(horizontal: 7, vertical: 7),
        backgroundColor: Theme.of(context).focusColor.withOpacity(0.05),
        selectedColor: Theme.of(context).focusColor.withOpacity(0.2),
        selected: selectedSize == size,
        shape: StadiumBorder(
            side: BorderSide(
                color: Theme.of(context).focusColor.withOpacity(0.05))),
//        avatar: Icon(Icons.check_circle),
        onSelected: (bool value) {
          setState(() {
            this._selectedSize = size;
          });
        },
      ),
    );
  }
}
