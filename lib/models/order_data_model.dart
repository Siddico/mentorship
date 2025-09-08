import 'package:flutter/material.dart';

class Order {
  final String orderNumber;
  final String trackingNumber;
  final String date;
  final int quantity;
  final double subtotal;
  final double shipping;
  final double total;
  final String status;
  final String deliveryAddress;
  final List<Product> products;

  Order({
    required this.orderNumber,
    required this.trackingNumber,
    required this.date,
    required this.quantity,
    required this.subtotal,
    required this.shipping,
    required this.total,
    required this.status,
    required this.deliveryAddress,
    required this.products,
  });
}

class Product {
  final String name;
  final int quantity;
  final double price;

  Product({required this.name, required this.quantity, required this.price});
}

List<Order> orders = [
  Order(
    orderNumber: '1524',
    trackingNumber: 'IK287368838',
    date: '13/05/2021',
    quantity: 2,
    subtotal: 110.00,
    shipping: 0.00,
    total: 110.00,
    status: 'Pending',
    deliveryAddress: 'SBI Building, Software Park',
    products: [
      Product(name: 'Sportwear Set', quantity: 1, price: 80.00),
      Product(name: 'Cotton T-shirt', quantity: 1, price: 30.00),
    ],
  ),
  Order(
    orderNumber: '1524',
    trackingNumber: 'IK2873218897',
    date: '12/05/2021',
    quantity: 3,
    subtotal: 230.00,
    shipping: 0.00,
    total: 230.00,
    status: 'Pending',
    deliveryAddress: 'SBI Building, Software Park',
    products: [
      Product(name: 'Product 1', quantity: 1, price: 100),
      Product(name: 'Product 2', quantity: 2, price: 65),
    ],
  ),
  Order(
    orderNumber: '1524',
    trackingNumber: 'IK237368820',
    date: '10/05/2021',
    quantity: 5,
    subtotal: 490.00,
    shipping: 0.00,
    total: 490.00,
    status: 'Pending',
    deliveryAddress: 'SBI Building, Software Park',
    products: [
      Product(name: 'Product 1', quantity: 2, price: 150),
      Product(name: 'Product 2', quantity: 3, price: 60),
    ],
  ),
  Order(
    orderNumber: '1514',
    trackingNumber: 'IK987362341',
    date: '13/05/2021',
    quantity: 2,
    subtotal: 120.00,
    shipping: 0.00,
    total: 120.00,
    status: 'Delivered',
    deliveryAddress: 'SBI Building, Software Park',
    products: [
      Product(name: 'Maxi Dress', quantity: 1, price: 68.00),
      Product(name: 'Linen Dress', quantity: 1, price: 52.00),
    ],
  ),
  Order(
    orderNumber: '1679',
    trackingNumber: 'IK3873218890',
    date: '12/05/2021',
    quantity: 3,
    subtotal: 450.00,
    shipping: 0.00,
    total: 450.00,
    status: 'Delivered',
    deliveryAddress: 'SBI Building, Software Park',
    products: [
      Product(name: 'Product 1', quantity: 1, price: 200),
      Product(name: 'Product 2', quantity: 2, price: 125),
    ],
  ),
  Order(
    orderNumber: '1671',
    trackingNumber: 'IK237368881',
    date: '10/05/2021',
    quantity: 3,
    subtotal: 400.00,
    shipping: 0.00,
    total: 400.00,
    status: 'Delivered',
    deliveryAddress: 'SBI Building, Software Park',
    products: [
      Product(name: 'Product 1', quantity: 1, price: 100),
      Product(name: 'Product 2', quantity: 2, price: 150),
    ],
  ),
  Order(
    orderNumber: '1829',
    trackingNumber: 'IK287368831',
    date: '10/05/2021',
    quantity: 2,
    subtotal: 210.00,
    shipping: 0.00,
    total: 210.00,
    status: 'Canceled',
    deliveryAddress: 'SBI Building, Software Park',
    products: [
      Product(name: 'Product 1', quantity: 1, price: 105),
      Product(name: 'Product 2', quantity: 1, price: 105),
    ],
  ),
  Order(
    orderNumber: '1824',
    trackingNumber: 'IK2882918812',
    date: '10/05/2021',
    quantity: 3,
    subtotal: 120.00,
    shipping: 0.00,
    total: 120.00,
    status: 'Canceled',
    deliveryAddress: 'SBI Building, Software Park',
    products: [
      Product(name: 'Product 1', quantity: 1, price: 60),
      Product(name: 'Product 2', quantity: 2, price: 30),
    ],
  ),
];
