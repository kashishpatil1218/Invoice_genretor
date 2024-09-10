<h1 align="center"> ✨Invoice Appication ✨</h1>

# Invoice App

Invoice App is a Flutter application designed for creating and managing invoices efficiently. The app allows users to add products, generate detailed invoices, and export them as PDF files for easy sharing and printing. It's ideal for small business owners, freelancers, and anyone in need of reliable billing solutions.

## Features

- **Product Management:** Add products with details such as name, description, quantity, and price.
- **Invoice Creation:** Create invoices that include customer and company details along with an itemized list of products.
- **PDF Export:** Generate and export invoices as PDF files.
- **Invoice Overview:** Manage and view a list of all created invoices.

## Installation

### Prerequisites

- Flutter 3.0.0 or higher
- Dart 2.14.0 or higher

### Setup

1. **Clone the Repository:**

    ```bash
    git clone https://github.com/yourusername/invoice-app.git
    cd invoice-app
    ```

2. **Install Dependencies:**

    ```bash
    flutter pub get
    ```

3. **Run the App:**

    ```bash
    flutter run
    ```

## Usage

### Adding Products

1. Navigate to the "Add Product" screen.
2. Enter the following product details:
   - Product Name
   - Description
   - Quantity
   - Price
3. Save the product to include it in the invoice.

### Creating an Invoice

1. Go to the "Create Invoice" screen.
2. Input customer and company information.
3. Select products to add to the invoice.
4. Preview and finalize the invoice details.

### Generating PDFs

1. On the finalized invoice, tap the "Export as PDF" button.
2. Choose a location on your device to save the generated PDF file.

### Managing Invoices

1. Access the "Invoices" section to view all created invoices.
2. View, share, or delete invoices as needed.

## Example Code

### Adding a Product

Here's a basic example of adding a product in Flutter:

```dart
import 'package:flutter/material.dart';

class AddProductScreen extends StatefulWidget {
  @override
  _AddProductScreenState createState() => _AddProductScreenState();
}

class _AddProductScreenState extends State<AddProductScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _quantityController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();

  void _addProduct() {
    // Logic to add product to a list or database
    print('Product added: ${_nameController.text}, ${_descriptionController.text}, ${_quantityController.text}, ${_priceController.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Product')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: _nameController, decoration: InputDecoration(labelText: 'Product Name')),
            TextField(controller: _descriptionController, decoration: InputDecoration(labelText: 'Description')),
            TextField(controller: _quantityController, decoration: InputDecoration(labelText: 'Quantity'), keyboardType: TextInputType.number),
            TextField(controller: _priceController, decoration: InputDecoration(labelText: 'Price'), keyboardType: TextInputType.number),
            SizedBox(height: 20),
            ElevatedButton(onPressed: _addProduct, child: Text('Add Product'))
          ],
        ),
      ),
    );
  }
}

```

<p>

## Images:
<div>
     <img src="https://github.com/user-attachments/assets/7303f379-7e21-41dc-8297-a800c51f5e58"height=500px>
     <img src="https://github.com/user-attachments/assets/bb10406c-7a0c-4fbc-bd66-03cd1518794e"height=500px>
     <img src="https://github.com/user-attachments/assets/cb7f99fd-7f50-4e92-a9a5-542be72eedf9"height=500px>
     <img src="https://github.com/user-attachments/assets/0d411c58-096a-42ac-bb3b-ba8ff20d9bda"height=500px>
     <img src="https://github.com/user-attachments/assets/4986d55d-2966-4236-841e-9ccd7cd33f2f"height=500px>
     <img src="https://github.com/user-attachments/assets/26874695-5b94-4d28-9ce1-43bdd04204bd"height=500px>


</div>
 
