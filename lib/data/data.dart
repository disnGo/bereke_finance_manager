import 'dart:math';
import 'package:bereke_finance_manager/models/cost_model.dart';
import 'package:bereke_finance_manager/models/type_model.dart';

final rand = Random();

final List<double> weeklySpendingBalance = [
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
];
final List<double> weeklySpendingSpend = [
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
];
final List<double> weeklySpendingTarget = [
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
  rand.nextDouble() * 100,
];

_generateExpenses() {
  List<CostModel> costModel = [
    CostModel(name: 'Вещь 1', cost: rand.nextDouble() * 90),
    CostModel(name: 'Вещь 2', cost: rand.nextDouble() * 90),
    CostModel(name: 'Вещь 3', cost: rand.nextDouble() * 90),
    CostModel(name: 'Вещь 4', cost: rand.nextDouble() * 90),
    CostModel(name: 'Вещь 5', cost: rand.nextDouble() * 90),
    CostModel(name: 'Вещь 6', cost: rand.nextDouble() * 90),
  ];
  return costModel;
}

List<TypeModel> typeNames = [
  TypeModel(name: 'Дом', maxAmount: 2000, expenses: _generateExpenses()),
  TypeModel(name: 'Одежда', maxAmount: 200, expenses: _generateExpenses()),
  TypeModel(name: 'Еда', maxAmount: 400, expenses: _generateExpenses()),
  TypeModel(name: 'Остальное', maxAmount: 200, expenses: _generateExpenses()),
  TypeModel(
      name: 'Развлечение', maxAmount: 100, expenses: _generateExpenses()),
  TypeModel(name: 'Транспорт', maxAmount: 100, expenses: _generateExpenses()),
];
