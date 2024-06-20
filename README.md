# API Documentation

## Description

This API provides endpoints for managing an e-commerce platform, including user authentication, product management, cart operations, order processing, and more.

## API Endpoints

This API provides various endpoints for handling e-commerce operations. Below are the details of each endpoint available.

## Base URL
```
http://localhost:3000/api
```

## Authentication

### Register a New User

**Endpoint:** `POST /api/auth/register`

**Description:** Register a new user.

**Request Body:**
```json
{
    "fullName": "string",
    "address": "string",
    "phone": "string",
    "email": "string",
    "password": "string",
    "isBrand": "boolean"
}
```

**Response:**
- **201 Created:** User successfully registered.
- **400 Bad Request:** Validation error or user already exists.

### Login

**Endpoint:** `POST /api/auth/login`

**Description:** Authenticate a user.

**Request Body:**
```json
{
    "email": "string",
    "password": "string"
}
```

**Response:**
- **200 OK:** Successful login with a token.
- **401 Unauthorized:** Incorrect email or password.

### Get User Profile

**Endpoint:** `GET /api/auth/profile`

**Description:** Retrieve the profile of the authenticated user.

**Request Headers:**
- **Authorization:** Bearer {token}

**Response:**
- **200 OK:** User profile data.
- **401 Unauthorized:** Invalid or missing token.

## Brands

### Get All Brands

**Endpoint:** `GET /api/brands`

**Description:** Retrieve a list of all brands.

**Response:**
- **200 OK:** List of brands.
- **500 Internal Server Error:** Server error.

### Create a New Brand

**Endpoint:** `POST /api/brands`

**Description:** Create a new brand.

**Request Body:**
```json
{
    "brandName": "string",
    "address": "string",
    "logo": "file"
}
```

**Response:**
- **201 Created:** Brand successfully created.
- **500 Internal Server Error:** Server error.

### Get Brand by ID

**Endpoint:** `GET /api/brands/:BrandId`

**Description:** Retrieve a brand by its ID.

**Response:**
- **200 OK:** Brand details.
- **404 Not Found:** Brand not found.
- **500 Internal Server Error:** Server error.

### Update Brand

**Endpoint:** `PATCH /api/brands/:BrandId`

**Description:** Update a brand's details.

**Request Body:**
```json
{
    "brandName": "string",
    "address": "string",
    "logo": "file"
}
```

**Response:**
- **200 OK:** Brand successfully updated.
- **404 Not Found:** Brand not found.
- **500 Internal Server Error:** Server error.

### Delete Brand

**Endpoint:** `DELETE /api/brands/:BrandId`

**Description:** Delete a brand by its ID.

**Response:**
- **200 OK:** Brand successfully deleted.
- **404 Not Found:** Brand not found.
- **500 Internal Server Error:** Server error.

## Cart

### Add Item to Cart

**Endpoint:** `POST /api/cart`

**Description:** Add a product to the cart.

**Request Body:**
```json
{
    "productId": "string",
    "count": "number"
}
```

**Response:**
- **201 Created:** Item added to cart.
- **500 Internal Server Error:** Server error.

### Get All Cart Items

**Endpoint:** `GET /api/cart`

**Description:** Retrieve all items in the cart.

**Response:**
- **200 OK:** List of cart items.
- **500 Internal Server Error:** Server error.

### Get User's Cart Items

**Endpoint:** `GET /api/cart/myCart`

**Description:** Retrieve the authenticated user's cart items.

**Request Headers:**
- **Authorization:** Bearer {token}

**Response:**
- **200 OK:** User's cart items.
- **401 Unauthorized:** Invalid or missing token.

### Update Cart Item

**Endpoint:** `PATCH /api/cart/:CartId`

**Description:** Update a cart item's details.

**Request Body:**
```json
{
    "count": "number",
    "isActive": "boolean"
}
```

**Response:**
- **200 OK:** Cart item successfully updated.
- **404 Not Found:** Cart item not found.
- **500 Internal Server Error:** Server error.

### Delete Cart Item

**Endpoint:** `DELETE /api/cart/:CartId`

**Description:** Delete a cart item by its ID.

**Response:**
- **200 OK:** Cart item successfully deleted.
- **404 Not Found:** Cart item not found.
- **500 Internal Server Error:** Server error.

## Categories

### Get All Categories

**Endpoint:** `GET /api/categories`

**Description:** Retrieve a list of all categories.

**Response:**
- **200 OK:** List of categories.
- **500 Internal Server Error:** Server error.

### Create a New Category

**Endpoint:** `POST /api/categories`

**Description:** Create a new category.

**Request Body:**
```json
{
    "categoryName": "string",
    "description": "string"
}
```

**Response:**
- **201 Created:** Category successfully created.
- **500 Internal Server Error:** Server error.

### Get Category by ID

**Endpoint:** `GET /api/categories/:CategoryId`

**Description:** Retrieve a category by its ID.

**Response:**
- **200 OK:** Category details.
- **404 Not Found:** Category not found.
- **500 Internal Server Error:** Server error.

### Update Category

**Endpoint:** `PATCH /api/categories/:CategoryId`

**Description:** Update a category's details.

**Request Body:**
```json
{
    "categoryName": "string",
    "description": "string"
}
```

**Response:**
- **200 OK:** Category successfully updated.
- **404 Not Found:** Category not found.
- **500 Internal Server Error:** Server error.

### Delete Category

**Endpoint:** `DELETE /api/categories/:CategoryId`

**Description:** Delete a category by its ID.

**Response:**
- **200 OK:** Category successfully deleted.
- **404 Not Found:** Category not found.
- **500 Internal Server Error:** Server error.

## Order Status

### Get All Order Statuses

**Endpoint:** `GET /api/orderStatus`

**Description:** Retrieve a list of all order statuses.

**Response:**
- **200 OK:** List of order statuses.
- **500 Internal Server Error:** Server error.

### Create a New Order Status

**Endpoint:** `POST /api/orderStatus`

**Description:** Create a new order status.

**Request Body:**
```json
{
    "statusName": "string"
}
```

**Response:**
- **201 Created:** Order status successfully created.
- **500 Internal Server Error:** Server error.

### Get Order Status by ID

**Endpoint:** `GET /api/orderStatus/:OrderStatusId`

**Description:** Retrieve an order status by its ID.

**Response:**
- **200 OK:** Order status details.
- **404 Not Found:** Order status not found.
- **500 Internal Server Error:** Server error.

### Update Order Status

**Endpoint:** `PATCH /api/orderStatus/:OrderStatusId`

**Description:** Update an order status's details.

**Request Body:**
```json
{
    "statusName": "string"
}
```

**Response:**
- **200 OK:** Order status successfully updated.
- **404 Not Found:** Order status not found.
- **500 Internal Server Error:** Server error.

### Delete Order Status

**Endpoint:** `DELETE /api/orderStatus/:OrderStatusId`

**Description:** Delete an order status by its ID.

**Response:**
- **200 OK:** Order status successfully deleted.


- **404 Not Found:** Order status not found.
- **500 Internal Server Error:** Server error.

## Orders

### Create a New Order

**Endpoint:** `POST /api/orders`

**Description:** Create a new order.

**Request Body:**
```json
{
    "freight": "number",
    "paymentId": "string",
    "orderStatusId": "string",
    "shipperId": "string",
    "cartId": "string"
}
```

**Response:**
- **201 Created:** Order successfully created.
- **500 Internal Server Error:** Server error.

### Get All Orders

**Endpoint:** `GET /api/orders`

**Description:** Retrieve a list of all orders.

**Response:**
- **200 OK:** List of orders.
- **500 Internal Server Error:** Server error.

### Get Processing Orders

**Endpoint:** `GET /api/orders/process`

**Description:** Retrieve all processing orders of the authenticated customer.

**Request Headers:**
- **Authorization:** Bearer {token}

**Response:**
- **200 OK:** List of processing orders.
- **401 Unauthorized:** Invalid or missing token.
- **404 Not Found:** No processing orders found.

### Get Finished Orders

**Endpoint:** `GET /api/orders/finished`

**Description:** Retrieve all finished orders of the authenticated customer.

**Request Headers:**
- **Authorization:** Bearer {token}

**Response:**
- **200 OK:** List of finished orders.
- **401 Unauthorized:** Invalid or missing token.
- **404 Not Found:** No finished orders found.

### Finish Order

**Endpoint:** `PATCH /api/orders/finishOrder`

**Description:** Marks an order as finished.

**Request Body:**
```json
{
    "orderId": "string"
}
```

**Response:**
- **200 OK:** Order successfully marked as finished.
- **404 Not Found:** Order not found.
- **500 Internal Server Error:** Server error.

## Payments

### Get All Payments

**Endpoint:** `GET /api/payments`

**Description:** Retrieve a list of all payments.

**Response:**
- **200 OK:** List of payments.
- **500 Internal Server Error:** Server error.

### Create a New Payment

**Endpoint:** `POST /api/payments`

**Description:** Create a new payment.

**Request Body:**
```json
{
    "paymentType": "string",
    "idAllow": "string"
}
```

**Response:**
- **201 Created:** Payment successfully created.
- **500 Internal Server Error:** Server error.

### Get Payment by ID

**Endpoint:** `GET /api/payments/:PaymentId`

**Description:** Retrieve a payment by its ID.

**Response:**
- **200 OK:** Payment details.
- **404 Not Found:** Payment not found.
- **500 Internal Server Error:** Server error.

### Update Payment

**Endpoint:** `PATCH /api/payments/:PaymentId`

**Description:** Update a payment's details.

**Request Body:**
```json
{
    "paymentType": "string",
    "idAllow": "string"
}
```

**Response:**
- **200 OK:** Payment successfully updated.
- **404 Not Found:** Payment not found.
- **500 Internal Server Error:** Server error.

### Delete Payment

**Endpoint:** `DELETE /api/payments/:PaymentId`

**Description:** Delete a payment by its ID.

**Response:**
- **200 OK:** Payment successfully deleted.
- **404 Not Found:** Payment not found.
- **500 Internal Server Error:** Server error.

## Products

### Get All Products

**Endpoint:** `GET /api/products`

**Description:** Retrieve a list of all products with pagination.

**Query Parameters:**
- **page**: Page number (default is 1).
- **limit**: Number of items per page (default is 10).

**Response:**
- **200 OK:** List of products with pagination info.
- **500 Internal Server Error:** Server error.

### Create a New Product

**Endpoint:** `POST /api/products`

**Description:** Create a new product.

**Request Body:**
```json
{
    "productName": "string",
    "productDescription": "string",
    "brandId": "string",
    "categoryId": "string",
    "unitPrice": "number",
    "unitSize": "string",
    "unitInStock": "number",
    "isAvailable": "boolean",
    "rating": "number"
}
```

**Response:**
- **201 Created:** Product successfully created.
- **500 Internal Server Error:** Server error.

### Get Product by ID

**Endpoint:** `GET /api/products/:ProductId`

**Description:** Retrieve a product by its ID.

**Response:**
- **200 OK:** Product details.
- **404 Not Found:** Product not found.
- **500 Internal Server Error:** Server error.

### Get Products by Brand

**Endpoint:** `GET /api/products/brand/:BrandName`

**Description:** Retrieve products by brand name.

**Response:**
- **200 OK:** List of products for the brand.
- **404 Not Found:** Brand not found.
- **500 Internal Server Error:** Server error.

### Get Products by Category

**Endpoint:** `GET /api/products/category/:CategoryName`

**Description:** Retrieve products by category name.

**Response:**
- **200 OK:** List of products for the category.
- **404 Not Found:** Category not found.
- **500 Internal Server Error:** Server error.

### Update Product

**Endpoint:** `PATCH /api/products/:ProductId`

**Description:** Update a product's details.

**Request Body:**
```json
{
    "productName": "string",
    "productDescription": "string",
    "categoryId": "string",
    "unitPrice": "number",
    "unitSize": "string",
    "unitInStock": "number",
    "isAvailable": "boolean"
}
```

**Response:**
- **200 OK:** Product successfully updated.
- **404 Not Found:** Product not found.
- **500 Internal Server Error:** Server error.

### Delete Product

**Endpoint:** `DELETE /api/products/:ProductId`

**Description:** Delete a product by its ID.

**Response:**
- **200 OK:** Product successfully deleted.
- **404 Not Found:** Product not found.
- **500 Internal Server Error:** Server error.

## Recommendation

### Get Recommendations

**Endpoint:** `GET /api/recommendation`

**Description:** Retrieve product recommendations based on a query.

**Query Parameters:**
- **query**: The search query for recommendations.

**Response:**
- **200 OK:** List of recommended products.
- **400 Bad Request:** Query parameter is required.
- **500 Internal Server Error:** Server error.

## Shippers

### Get All Shippers

**Endpoint:** `GET /api/shippers`

**Description:** Retrieve a list of all shippers.

**Response:**
- **200 OK:** List of shippers.
- **500 Internal Server Error:** Server error.

### Create a New Shipper

**Endpoint:** `POST /api/shippers`

**Description:** Create a new shipper.

**Request Body:**
```json
{
    "companyName": "string",
    "phone": "string"
}
```

**Response:**
- **201 Created:** Shipper successfully created.
- **500 Internal Server Error:** Server error.

### Get Shipper by ID

**Endpoint:** `GET /api/shippers/:ShipperId`

**Description:** Retrieve a shipper by its ID.

**Response:**
- **200 OK:** Shipper details.
- **404 Not Found:** Shipper not found.
- **500 Internal Server Error:** Server error.

### Update Shipper

**Endpoint:** `PATCH /api/shippers/:ShipperId`

**Description:** Update a shipper's details.

**Request Body:**
```json
{
    "shipperName": "string",
    "companyName": "string",
    "phone": "string"
}
```

**Response:**
- **200 OK:** Shipper successfully updated.
- **404 Not Found:** Shipper not found.
- **500 Internal Server Error:** Server error.

### Delete Shipper

**Endpoint:** `DELETE /api/shippers/:ShipperId`

**Description:** Delete a shipper by its ID.

**Response:**
- **200 OK:** Shipper successfully deleted.
- **404 Not Found:** Shipper not found.
- **500 Internal Server Error:** Server error.

## Wishlist

### Add Item to Wishlist

**Endpoint:** `POST /api/wishlist`

**Description:** Add a product to the wishlist.

**Request Body:**
```json
{
    "productId": "string"
}
```

**Response:**
- **201 Created:** Item added to wishlist.
- **500 Internal Server Error:** Server error.

### Get All Wishlist Items

**Endpoint:** `GET /api/wishlist`

**Description:** Retrieve all items in the wishlist.

**Response:**
- **200 OK:** List of wishlist items.
- **500 Internal Server Error:** Server error.

### Get User's Wishlist Items

**Endpoint:** `GET /api/wishlist/myWishlist`

**Description:** Retrieve the authenticated user's wishlist items.

**Request Headers:**
- **Authorization:** Bearer {token}

**Response:**
- **200 OK:** User's wishlist items.
- **401 Unauthorized:** Invalid or missing token.

### Delete Wishlist Item

**Endpoint:** `DELETE /api/wishlist/:WishlistId`

**Description:** Delete a wishlist item by its ID.

**Response:**
- **200 OK:** Wishlist item successfully deleted.
- **404 Not Found:** Wishlist item not found.
- **500 Internal Server Error:** Server error.