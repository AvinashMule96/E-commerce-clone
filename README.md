# VELOUR — Modern E-Commerce Platform

A complete, functional e-commerce web application meticulously engineered from the Figma wireframe designs. Built with **React + Vite**, responsive CSS, and persistent state management.

---

## ✨ Features & Figma Wireframe Alignment

### 1. 🔐 Login & Authentication
- **Figma Alignment**: Exact reproduction of the Login/Register modal with top avatar circle, email/password fields, "Forgot Password?", primary dark `LOGIN` button, social buttons (Google & Facebook), and user dropdown card.
- **Form Validation**: Live validation for empty inputs, password length, and email format.
- **Persistence**: Session is preserved in `localStorage` across refreshes and page navigation.
- **User Menu**: Interactive dropdown displaying full customer name, email, quick links to **My Orders**, **Wishlist**, **Saved Addresses**, **Account Settings**, and **Logout**.

### 2. 🏠 E-Commerce Homepage
- **Hero Carousel**: "New Arrivals - Summer Collection" banner with "SHOP NOW" CTA, automated sliding, arrow navigation, and dot indicators.
- **Trust Badges**: Value proposition bar with Free Shipping, Easy Returns, Secure Payment, and 24/7 Support.
- **Top Categories**: Grid cards for Men, Women, Footwear, Bags, and Watches with quick routing to filtered catalog pages.
- **Best Selling Products**: Live catalog grid with high-resolution imagery, hover zoom, wishlist toggling, star ratings, review counts, price tags, and quick Add-to-Cart with visual feedback.
- **Customer Testimonials**: "What Our Customers Say" carousel matching Figma with verified badges and ratings.
- **Booking & Calendar Widget**: Interactive month date picker and available time slots (10:00 AM – 5:30 PM) for VIP styling consultations with instant booking confirmation modal.
- **Live Chat Assistant**: Expandable floating support widget with simulated intelligent responses and a "Send Message" contact form.

### 3. 🛍️ Category & Product Catalog
- **Breadcrumbs**: Dynamic hierarchical navigation (`Home > Category > Product`).
- **Live Search**: Instant keyword search filtering across title, description, category, and brand with active tag indicators.
- **Multi-Filter Sidebar**:
  - Categories list with live item counts
  - Dynamic Price Slider ($0 – $200)
  - Brand checkboxes (Nike, Adidas, Puma, Levi's, U.S. Polo, Zara, Fossil, H&M)
  - Size chips (S, M, L, XL, XXL)
  - Color swatches with active selection ring
  - "Clear All" reset trigger
- **Sorting**: Popularity, Price (Low to High), Price (High to Low), Customer Rating, and Newest.
- **Pagination**: Numbered navigation matching Figma wireframe.

### 4. 🔍 Single Product Detail Page
- **Gallery**: 4 thumbnail images on left + 1 high-resolution main image with discount badge.
- **Product Options**:
  - Interactive color swatches with active ring indicator
  - Size selector buttons (S, M, L, XL, XXL) + Size Guide modal
  - Quantity counter (`[-] 1 [+]`)
  - "ADD TO CART" & "BUY NOW" buttons with animated confirmation
  - Wishlist toggle
- **Tabs**:
  - `DESCRIPTION`: Comprehensive specifications, materials, fit profiles, care instructions, and highlights
  - `REVIEWS (98)`: Score breakdown, customer reviews stream, and "Write a Review" form
  - `SHIPPING & RETURNS`: Delivery timelines and 30-day warranty policy
- **Related Products**: "You May Also Like" carousel.

### 5. 🛒 Shopping Cart
- **Figma Alignment**: Pre-configured with demo items matching the Figma numbers:
  - Item 1: *Casual Cotton Shirt* (Size M, Color Olive Green, $29.99, Qty 1)
  - Item 2: *Running Shoes* (Size 9, Color Black, $59.99, Qty 1)
  - Subtotal: **$89.98** | Shipping: **Free** | Tax (6%): **$5.40** | Total: **$95.38**
- **Interactivity**: Quantity increase/decrease, item removal, promo coupons (`SAVE10` for 10% off), real-time tax/shipping calculations, and `localStorage` persistence.

### 6. 💳 3-Step Checkout Flow
- **Stepper**: `[1 Shipping]` ➔ `[2 Payment]` ➔ `[3 Review]`
- **Step 1 (Shipping)**: Full Name, Phone, Email, Address, Apartment/Suite, City, State, ZIP with validation.
- **Step 2 (Payment)**: Selectable options for Credit/Debit Card (Visa, Mastercard, AMEX, RuPay), UPI, Net Banking, and Wallets/COD.
- **Step 3 (Review)**: Comprehensive pre-order summary before placing order.

### 7. 🧾 Order Confirmation & Printable Receipt
- **Unique Order ID**: Automatically generated (e.g., `#ORD-2026-98412`).
- **Confirmation**: Date, timestamp, customer shipping information, ordered products table with unit prices and totals.
- **Print Receipt**: Dedicated `window.print()` trigger and print-specific CSS (`@media print`) that formats an invoice cleanly without headers or navigation.
- **Cart Clearing**: Automatically resets active cart upon successful purchase and archives order into **My Orders**.

---

## 🛠️ Project Structure

```
src/
├── components/
│   ├── BookingWidget.jsx      # VIP styling date/time booking
│   ├── CartItem.jsx           # Cart table item row with qty modifiers
│   ├── CategoryCards.jsx      # Top categories grid
│   ├── FilterSidebar.jsx      # Multi-facet filters
│   ├── Footer.jsx             # Site footer and newsletter
│   ├── HeroCarousel.jsx       # Summer collection banner
│   ├── Icons.jsx              # Zero-dependency SVG vector icon library
│   ├── LiveChatWidget.jsx     # Floating chat modal & contact form
│   ├── Navbar.jsx             # Responsive navbar with user profile dropdown
│   ├── ProductCard.jsx        # Product card with wishlist & add to cart
│   ├── Receipt.jsx            # Printable invoice component
│   ├── Testimonials.jsx       # Verified customer testimonials
│   └── TrustBadges.jsx        # Value proposition trust bar
├── context/
│   ├── AuthContext.jsx        # User login, registration, localStorage session
│   ├── CartContext.jsx        # Cart items, coupon codes, tax calculations
│   ├── OrderContext.jsx       # Order placement, history, receipt generation
│   └── WishlistContext.jsx    # Wishlist management
├── data/
│   ├── categories.js          # Categories metadata and cover imagery
│   ├── products.js            # Comprehensive product catalog
│   └── testimonials.js        # Testimonials, chat replies, booking slots
├── pages/
│   ├── CartPage.jsx           # Cart view & price details
│   ├── CategoryPage.jsx       # Catalog listing with search & filters
│   ├── CheckoutPage.jsx       # 3-step checkout flow
│   ├── HomePage.jsx           # Homepage with all wireframe sections
│   ├── LoginPage.jsx          # Login & registration
│   ├── OrderSuccessPage.jsx   # Order confirmation & printable receipt
│   ├── OrdersHistoryPage.jsx  # Past orders history & invoice viewer
│   ├── ProductDetailPage.jsx  # Single product gallery, options, tabs
│   └── WishlistPage.jsx       # Saved favorites
├── App.jsx                    # Root routes and providers
├── main.jsx                   # Vite entry point
└── index.css                  # Modern responsive design system & print styles
```

---

## 🚀 Running Locally

```bash
# 1. Navigate to project directory
cd ecommerce-store

# 2. Install dependencies
npm install

# 3. Start local development server
npm run dev
```

Visit `http://localhost:3000` in your browser.

---

## 🌐 Deploying to Vercel

The project includes `vercel.json` with SPA route rewrites configured:

```bash
# Install Vercel CLI (optional) or deploy via GitHub:
npm i -g vercel
vercel
```

Or connect the GitHub repository directly to Vercel — it will automatically detect the Vite preset and deploy with zero configuration needed.
