import 'package:flutter/material.dart';
import 'package:mentorship/models/order_data_model.dart';
import 'package:mentorship/utils/constants/text_styles.dart';
import 'package:mentorship/views/my_orders_View/widgets/cancelled_card.dart';
import 'package:mentorship/views/my_orders_View/widgets/delivered_card.dart';
import 'package:mentorship/views/my_orders_View/widgets/on_the_way_card.dart';
import 'package:mentorship/views/my_orders_View/widgets/order_info_card.dart';
import 'package:mentorship/views/my_orders_View/widgets/rate_product_view.dart';

class OrderInfoView extends StatelessWidget {
  final Order order;

  const OrderInfoView({super.key, required this.order});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Color(0xff1D1F22),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        centerTitle: true,
        title: Text(
          'Order #${order.orderNumber}',
          style: TextStyles.fontsize16weight700.copyWith(
            fontSize: 18,
            color: Color(0xff1D1F22),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            if (order.status == 'Delivered')
              DeliveredCard(order: order, onRatePressed: () {})
            else if (order.status == 'Pending')
              OnTheWayCard(order: order)
            else
              CanceledCard(order: order),
            const SizedBox(height: 16),
            OrderInfoCard(order: order),
            const SizedBox(height: 16),
            _buildProductsSection(),
            _buildPriceSummary(),
            const SizedBox(height: 24),
            _buildActionButtons(context),
          ],
        ),
      ),
    );
  }

  Widget _buildProductsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Products',
          style: TextStyles.fontsize16weight700.copyWith(color: Colors.black),
        ),
        const SizedBox(height: 8),
        ...order.products.map(
          (product) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${product.name} x${product.quantity}',
                  style: TextStyles.fontsize14weight400.copyWith(
                    color: Colors.black,
                  ),
                ),
                Text(
                  '\$${product.price.toStringAsFixed(2)}',
                  style: TextStyles.fontsize14weight400.copyWith(
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPriceSummary() {
    return Column(
      children: [
        _buildPriceRow('Sub Total', order.subtotal),
        _buildPriceRow('Shipping', order.shipping),
        _buildPriceRow('Total', order.total, isTotal: true),
      ],
    );
  }

  Widget _buildPriceRow(String label, double value, {bool isTotal = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          Text(
            '\$${value.toStringAsFixed(2)}',
            style: TextStyle(
              fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildActionButtons(BuildContext context) {
    if (order.status == 'Delivered') {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
              child: Container(
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: Color(0xff777e90), width: 1),
                ),
                child: Center(
                  child: Text(
                    'Return home',
                    style: TextStyles.fontsize16weight700.copyWith(
                      color: Color(0xff777e90),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return RateProductView();
                    },
                  ),
                );
              },
              child: Container(
                height: 48,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  color: Color(0xff343434),
                ),
                child: Center(
                  child: Text(
                    'Rate',
                    style: TextStyles.fontsize16weight700.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    } else {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Color(0xff343434),
        ),
        height: 48,
        width: double.infinity,
        child: Center(
          child: Text(
            'Continue shopping',
            style: TextStyles.fontsize16weight700.copyWith(color: Colors.white),
          ),
        ),
      );
    }
  }
}
