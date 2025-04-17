import 'package:fashion_shoping/core/utils/design_utils.dart';
import 'package:fashion_shoping/features/favorites/controllers/favorites_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// class FavoritesScreen extends StatefulWidget {
//   const FavoritesScreen({super.key});
//
//   @override
//   State<FavoritesScreen> createState() => _FavoritesScreenState();
// }
//
// class _FavoritesScreenState extends State<FavoritesScreen> {
//
//   final FavoritesScreenController controller = Get.find<FavoritesScreenController>();
//
//   @override
//   void initState(){
//     super.initState();
//     controller.init();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       top: false,
//       child: const Scaffold(
//         backgroundColor: scaffoldBackgroundColor,
//         body: Center(
//           child: Text(
//               "Favorites Screen"
//           ),
//         ),
//       ),
//     );
//   }
// }

class FavoritesScreen extends StatefulWidget {
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {

  final FavoritesScreenController controller = Get.find<FavoritesScreenController>();

  final ScrollController _scrollController = ScrollController();
  bool _showGridView = false;

  @override
  void initState() {
    super.initState();
    controller.init();
    _scrollController.addListener(_handleScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_handleScroll);
    _scrollController.dispose();
    super.dispose();
  }

  void _handleScroll() {
    if (_scrollController.offset > 200 && !_showGridView) {
      setState(() => _showGridView = true);
    } else if (_scrollController.offset <= 200 && _showGridView) {
      setState(() => _showGridView = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_list),
            onPressed: () {
              // Show filter dialog
              showModalBottomSheet(
                context: context,
                builder: (context) => _buildFiltersBottomSheet(),
              );
            },
          ),
        ],
      ),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Summer',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    children: [
                      _buildCategoryChip('T-Shirts'),
                      _buildCategoryChip('Shirts'),
                    ],
                  ),
                ],
              ),
            ),
          ),
          if (!_showGridView) _buildListView(),
          if (_showGridView) _buildGridView(),
          const SliverToBoxAdapter(child: SizedBox(height: 80)),
        ],
      ),
    );
  }

  Widget _buildCategoryChip(String label) {
    return Chip(
      label: Text(label),
      backgroundColor: Colors.grey[200],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }

  Widget _buildListView() {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (context, index) => _buildFavoriteItem(index),
        childCount: 5,
      ),
    );
  }

  Widget _buildGridView() {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.7,
      ),
      delegate: SliverChildBuilderDelegate(
            (context, index) => _buildFavoriteGridItem(index),
        childCount: 5,
      ),
    );
  }

  Widget _buildFavoriteItem(int index) {
    final items = [
      {
        'brand': 'LINE',
        'name': 'Shirt',
        'color': 'Blue',
        'size': 'L',
        'price': '325',
        'rating': 5,
        'reviews': 10,
        'sale': false,
      },
      {
        'brand': 'Mango',
        'name': 'Longsleeve Violeta',
        'color': 'Orange',
        'size': 'S',
        'price': '465',
        'rating': 0,
        'reviews': 0,
        'sale': false,
      },
      {
        'brand': 'Oliver',
        'name': 'Shirt',
        'color': 'Gray',
        'size': 'L',
        'price': '525',
        'rating': 3,
        'reviews': 3,
        'sale': false,
      },
      {
        'brand': '&Berries',
        'name': 'T-Shirt',
        'color': 'Black',
        'size': 'S',
        'price': '395',
        'originalPrice': '555',
        'rating': 0,
        'reviews': 0,
        'sale': true,
      },
    ];

    if (index >= items.length) {
      return const Padding(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Text('Sorry, this item is currently sold out'),
        ),
      );
    }

    final item = items[index];
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  item['brand'] as String,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                if (item['sale'] as bool)
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: const Text(
                      '30%',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 8),
            Text(item['name'] as String),
            const SizedBox(height: 4),
            Text('Color: ${item['color']}'),
            Text('Size: ${item['size']}'),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$${item['price']}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Row(
                  children: [
                    _buildRatingStars(item['rating'] as int),
                    Text('(${item['reviews']})'),
                  ],
                ),
              ],
            ),
            if (item['sale'] as bool)
              Text(
                '\$${item['originalPrice']}',
                style: const TextStyle(
                  decoration: TextDecoration.lineThrough,
                  color: Colors.grey,
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildFavoriteGridItem(int index) {
    final items = [
      // Same items as above
    ];

    if (index >= items.length) {
      return const Center(
        child: Text('Sold out'),
      );
    }

    final item = items[index];
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Container(
                color: Colors.grey[200],
                child: Center(
                  child: Text(
                    item['brand'] as String,
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(item['name'] as String),
            Text('Color: ${item['color']}'),
            Text('Size: ${item['size']}'),
            const SizedBox(height: 4),
            Text(
              '\$${item['price']}',
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            if (item['sale'] as bool)
              Text(
                '\$${item['originalPrice']}',
                style: const TextStyle(
                  decoration: TextDecoration.lineThrough,
                  color: Colors.grey,
                ),
              ),
            _buildRatingStars(item['rating'] as int),
          ],
        ),
      ),
    );
  }

  Widget _buildRatingStars(int rating) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(5, (index) {
        return Icon(
          index < rating ? Icons.star : Icons.star_border,
          color: index < rating ? Colors.amber : Colors.grey,
          size: 16,
        );
      }),
    );
  }

  Widget _buildFiltersBottomSheet() {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'Filters',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          ListTile(
            title: const Text('Price: lowest to high'),
            trailing: const Icon(Icons.check),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          // Add more filter options here
        ],
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shop),
          label: 'Shop',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag),
          label: 'Bag',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favorites',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      currentIndex: 3, // Favorites is selected
    );
  }
}