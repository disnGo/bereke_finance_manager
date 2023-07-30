import 'package:flutter/material.dart';
import 'package:bereke_finance_manager/amiyan_screen.dart';

class VirtualPotBlock extends StatefulWidget {
  final String category;
  final double monthlyLimit;
  final double initialSpentAmount;

  const VirtualPotBlock({
    Key? key,
    required this.category,
    required this.monthlyLimit,
    required this.initialSpentAmount,
  }) : super(key: key);

  @override
  _VirtualPotBlockState createState() => _VirtualPotBlockState();
}

class _VirtualPotBlockState extends State<VirtualPotBlock> {
  late double spentAmount;
  bool isSliderLocked = false;

  @override
  void initState() {
    super.initState();
    spentAmount = widget.initialSpentAmount;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          color: Colors.grey[800],
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          isSliderLocked = !isSliderLocked;
                        });
                      },
                      icon: Icon(
                        isSliderLocked ? Icons.lock : Icons.lock_open,
                        color: isSliderLocked ? Colors.green : Colors.green,
                      ),
                    ),
                  ],
                ),
                Text(
                  widget.category,
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  'Месячный лимит: \₸${widget.monthlyLimit.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  'Потрачено: \₸${spentAmount.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  'Остаток: \₸${(widget.monthlyLimit - spentAmount).toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8.0),
                Slider(
                  value: spentAmount,
                  onChanged: (isSliderLocked)
                      ? null
                      : (newValue) {
                          setState(() {
                            spentAmount = newValue;
                          });
                        },
                  min: 0,
                  max: widget.monthlyLimit,
                  divisions: widget.monthlyLimit.toInt(),
                  label: '\₸${spentAmount.toStringAsFixed(2)}',
                  activeColor: Colors.green,
                  inactiveColor: Colors.grey,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
