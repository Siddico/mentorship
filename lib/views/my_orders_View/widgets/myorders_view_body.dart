import 'package:flutter/material.dart';
import 'package:mentorship/models/order_data_model.dart';
import 'package:mentorship/views/my_orders_View/widgets/order_card_widget.dart';

class MyordersViewBody extends StatefulWidget {
  const MyordersViewBody({super.key});

  @override
  State<MyordersViewBody> createState() => _MyordersViewBodyState();
}

class _MyordersViewBodyState extends State<MyordersViewBody> {
  String _selectedStatus = 'Pending';
  List<Order> _filteredOrders = [];

  @override
  void initState() {
    super.initState();
    _filterOrders();
  }

  void _filterOrders() {
    setState(() {
      _filteredOrders = orders
          .where((order) => order.status == _selectedStatus)
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildStatusTabs(),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16.0),
              itemCount: _filteredOrders.length,
              itemBuilder: (context, index) {
                return OrderCard(order: _filteredOrders[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusTabs() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildTab('Pending'),
          _buildTab('Delivered'),
          _buildTab('Canceled'),
        ],
      ),
    );
  }

  Widget _buildTab(String status) {
    bool isSelected = _selectedStatus == status;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedStatus = status;
          _filterOrders();
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        decoration: BoxDecoration(
          color: isSelected ? Colors.black : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          status,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
