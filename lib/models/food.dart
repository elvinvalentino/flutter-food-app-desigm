class Food {
  final String title, subtitle, description, deliveryTime, image;
  final int energy;
  final double price, rating;

  Food({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.energy,
    required this.rating,
    required this.deliveryTime,
    required this.price,
    required this.image
  });
}

var foodList = <Food>[
  Food(
    title: 'Beef Burger',
    subtitle: 'Cheesy Mozarella',
    description: 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.',
    energy: 620,
    rating: 4.6,
    deliveryTime: '20-30 Min',
    price: 12.48,
    image: 'assets/images/burger.png'
  ),
  Food(
    title: 'Sandwich',
    subtitle: 'Cheesy Mozarella',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam placerat euismod venenatis. Integer ac commodo nulla. Aenean accumsan turpis augue.',
    energy: 510,
    rating: 4.8,
    deliveryTime: '10-15 Min',
    price: 10.28,
    image: 'assets/images/sandwich.png'
  ),
  Food(
    title: 'Donut',
    subtitle: 'Creamy Chocolate',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam convallis felis at orci aliquam, id blandit metus fringilla. Fusce commodo tincidunt est ac accumsan. Quisque.',
    energy: 350,
    rating: 4.9,
    deliveryTime: '5-10 Min',
    price: 4.67,
    image: 'assets/images/donut.png'
  ),
  Food(
    title: 'Soda',
    subtitle: 'Fresh Lime',
    description: 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.',
    energy: 120,
    rating: 4.5,
    deliveryTime: '1-5 Min',
    price: 2.05,
    image: 'assets/images/drink.png'
  ),
  Food(
    title: 'Pizza',
    subtitle: 'Cheesy Mozarella',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam placerat euismod venenatis. Integer ac commodo nulla. Aenean accumsan turpis augue.',
    energy: 700,
    rating: 5.0,
    deliveryTime: '20-30 Min',
    price: 16.93,
    image: 'assets/images/pizza.png'
  ),
  Food(
    title: 'Pop Corn',
    subtitle: 'Fresh Corn',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam convallis felis at orci aliquam, id blandit metus fringilla. Fusce commodo tincidunt est ac accumsan. Quisque.',
    energy: 210,
    rating: 4.4,
    deliveryTime: '1-3 Min',
    price: 15.36,
    image: 'assets/images/popcorn.png'
  ),
];