import 'package:fashion_shoping/core/utils/design_utils.dart';

/// My Order List sample data
Map<String, dynamic> myOrderSampleData = {
  "data": [
    {
      "orderTrackingNumber": "IWVKDJGDGHDFBCFJ123415",
      "orderNo": "0000000001",
      "orderDate": "20-02-2024",
      "orderQuantity": 3,
      "orderStatus": "Delivered",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl": "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        },
        {
          "orderItemTrackingNumber": "Q9SX81D54C52S241C1D",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1AJLaV8LfMSvroY9rtQfvkWCrWDCoS-8N",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 3,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "15\$"
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    },
    {
      "orderTrackingNumber": "9D0D9D9D123415",
      "orderNo": "0000000002",
      "orderDate": "20-02-2024",
      "orderQuantity": 5,
      "orderStatus": "Cancelled",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        },
        {
          "orderItemTrackingNumber": "Q9SX81D54C52S241C1D",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1AJLaV8LfMSvroY9rtQfvkWCrWDCoS-8N",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 3,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "15\$"
        },
        {
          "orderItemTrackingNumber": "JH75NV8NA8GN9NVK7",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1xEUJZ9SF3qV7uGTH-1S9_27vtk_HIkKa",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "L",
          "orderItemUnits": 1,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "5\$",
        },
        {
          "orderItemTrackingNumber": "N1N34GN0NUR8N84N89",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1f7eLitIydRPVHEgyOJpIM5Pj6J6Q2nQT",
          "orderItemName": "Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Blue",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$",
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    },
    {
      "orderTrackingNumber": "O2I1HJ2U3123415",
      "orderNo": "0000000003",
      "orderDate": "20-02-2024",
      "orderQuantity": 2,
      "orderStatus": "Delivered",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    },
    {
      "orderTrackingNumber": "A2SWS2S3E123415",
      "orderNo": "0000000004",
      "orderDate": "20-02-2024",
      "orderQuantity": 3,
      "orderStatus": "Cancelled",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        },
        {
          "orderItemTrackingNumber": "Q9SX81D54C52S241C1D",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1AJLaV8LfMSvroY9rtQfvkWCrWDCoS-8N",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 3,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "15\$"
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    },
    {
      "orderTrackingNumber": "IWVKDJGDGHDFBCFJ123415",
      "orderNo": "0000000005",
      "orderDate": "20-02-2024",
      "orderQuantity": 3,
      "orderStatus": "Delivered",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        },
        {
          "orderItemTrackingNumber": "Q9SX81D54C52S241C1D",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1AJLaV8LfMSvroY9rtQfvkWCrWDCoS-8N",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 3,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "15\$"
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    },
    {
      "orderTrackingNumber": "IWVKDJGDGHDFBCFJ123415",
      "orderNo": "0000000006",
      "orderDate": "20-02-2024",
      "orderQuantity": 3,
      "orderStatus": "Processing",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        },
        {
          "orderItemTrackingNumber": "Q9SX81D54C52S241C1D",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1AJLaV8LfMSvroY9rtQfvkWCrWDCoS-8N",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 3,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "15\$"
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    },
    {
      "orderTrackingNumber": "IWVKDJGDGHDFBCFJ123415",
      "orderNo": "0000000007",
      "orderDate": "20-02-2024",
      "orderQuantity": 3,
      "orderStatus": "Cancelled",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        },
        {
          "orderItemTrackingNumber": "Q9SX81D54C52S241C1D",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1AJLaV8LfMSvroY9rtQfvkWCrWDCoS-8N",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 3,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "15\$"
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    },
    {
      "orderTrackingNumber": "IWVKDJGDGHDFBCFJ123415",
      "orderNo": "0000000008",
      "orderDate": "20-02-2024",
      "orderQuantity": 3,
      "orderStatus": "Processing",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        },
        {
          "orderItemTrackingNumber": "Q9SX81D54C52S241C1D",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1AJLaV8LfMSvroY9rtQfvkWCrWDCoS-8N",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 3,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "15\$"
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    },
    {
      "orderTrackingNumber": "IWVKDJGDGHDFBCFJ123415",
      "orderNo": "0000000009",
      "orderDate": "20-02-2024",
      "orderQuantity": 3,
      "orderStatus": "Delivered",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        },
        {
          "orderItemTrackingNumber": "Q9SX81D54C52S241C1D",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1AJLaV8LfMSvroY9rtQfvkWCrWDCoS-8N",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 3,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "15\$"
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    },
    {
      "orderTrackingNumber": "IWVKDJGDGHDFBCFJ123415",
      "orderNo": "0000000010",
      "orderDate": "20-02-2024",
      "orderQuantity": 3,
      "orderStatus": "Cancelled",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        },
        {
          "orderItemTrackingNumber": "Q9SX81D54C52S241C1D",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1AJLaV8LfMSvroY9rtQfvkWCrWDCoS-8N",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 3,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "15\$"
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    },
    {
      "orderTrackingNumber": "IWVKDJGDGHDFBCFJ123415",
      "orderNo": "0000000011",
      "orderDate": "20-02-2024",
      "orderQuantity": 3,
      "orderStatus": "Delivered",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        },
        {
          "orderItemTrackingNumber": "Q9SX81D54C52S241C1D",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1AJLaV8LfMSvroY9rtQfvkWCrWDCoS-8N",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 3,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "15\$"
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    },
    {
      "orderTrackingNumber": "IWVKDJGDGHDFBCFJ123415",
      "orderNo": "0000000012",
      "orderDate": "20-02-2024",
      "orderQuantity": 3,
      "orderStatus": "Processing",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        },
        {
          "orderItemTrackingNumber": "Q9SX81D54C52S241C1D",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1AJLaV8LfMSvroY9rtQfvkWCrWDCoS-8N",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 3,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "15\$"
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    },
    {
      "orderTrackingNumber": "IWVKDJGDGHDFBCFJ123415",
      "orderNo": "0000000013",
      "orderDate": "20-02-2024",
      "orderQuantity": 3,
      "orderStatus": "Delivered",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        },
        {
          "orderItemTrackingNumber": "Q9SX81D54C52S241C1D",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1AJLaV8LfMSvroY9rtQfvkWCrWDCoS-8N",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 3,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "15\$"
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    },
    {
      "orderTrackingNumber": "9D0D9D9D123415",
      "orderNo": "0000000014",
      "orderDate": "20-02-2024",
      "orderQuantity": 5,
      "orderStatus": "Cancelled",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        },
        {
          "orderItemTrackingNumber": "Q9SX81D54C52S241C1D",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1AJLaV8LfMSvroY9rtQfvkWCrWDCoS-8N",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 3,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "15\$"
        },
        {
          "orderItemTrackingNumber": "JH75NV8NA8GN9NVK7",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1xEUJZ9SF3qV7uGTH-1S9_27vtk_HIkKa",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "L",
          "orderItemUnits": 1,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "5\$",
        },
        {
          "orderItemTrackingNumber": "N1N34GN0NUR8N84N89",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1f7eLitIydRPVHEgyOJpIM5Pj6J6Q2nQT",
          "orderItemName": "Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Blue",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$",
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    },
    {
      "orderTrackingNumber": "O2I1HJ2U3123415",
      "orderNo": "0000000015",
      "orderDate": "20-02-2024",
      "orderQuantity": 2,
      "orderStatus": "Delivered",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    },
    {
      "orderTrackingNumber": "A2SWS2S3E123415",
      "orderNo": "0000000016",
      "orderDate": "20-02-2024",
      "orderQuantity": 3,
      "orderStatus": "Cancelled",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        },
        {
          "orderItemTrackingNumber": "Q9SX81D54C52S241C1D",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1AJLaV8LfMSvroY9rtQfvkWCrWDCoS-8N",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 3,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "15\$"
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    },
    {
      "orderTrackingNumber": "IWVKDJGDGHDFBCFJ123415",
      "orderNo": "0000000017",
      "orderDate": "20-02-2024",
      "orderQuantity": 3,
      "orderStatus": "Delivered",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        },
        {
          "orderItemTrackingNumber": "Q9SX81D54C52S241C1D",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1AJLaV8LfMSvroY9rtQfvkWCrWDCoS-8N",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 3,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "15\$"
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    },
    {
      "orderTrackingNumber": "IWVKDJGDGHDFBCFJ123415",
      "orderNo": "0000000018",
      "orderDate": "20-02-2024",
      "orderQuantity": 3,
      "orderStatus": "Processing",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        },
        {
          "orderItemTrackingNumber": "Q9SX81D54C52S241C1D",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1AJLaV8LfMSvroY9rtQfvkWCrWDCoS-8N",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 3,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "15\$"
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    },
    {
      "orderTrackingNumber": "IWVKDJGDGHDFBCFJ123415",
      "orderNo": "0000000019",
      "orderDate": "20-02-2024",
      "orderQuantity": 3,
      "orderStatus": "Cancelled",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        },
        {
          "orderItemTrackingNumber": "Q9SX81D54C52S241C1D",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1AJLaV8LfMSvroY9rtQfvkWCrWDCoS-8N",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 3,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "15\$"
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    },
    {
      "orderTrackingNumber": "IWVKDJGDGHDFBCFJ123415",
      "orderNo": "0000000020",
      "orderDate": "20-02-2024",
      "orderQuantity": 3,
      "orderStatus": "Processing",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        },
        {
          "orderItemTrackingNumber": "Q9SX81D54C52S241C1D",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1AJLaV8LfMSvroY9rtQfvkWCrWDCoS-8N",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 3,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "15\$"
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    },
    {
      "orderTrackingNumber": "IWVKDJGDGHDFBCFJ123415",
      "orderNo": "0000000021",
      "orderDate": "20-02-2024",
      "orderQuantity": 3,
      "orderStatus": "Delivered",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        },
        {
          "orderItemTrackingNumber": "Q9SX81D54C52S241C1D",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1AJLaV8LfMSvroY9rtQfvkWCrWDCoS-8N",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 3,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "15\$"
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    },
    {
      "orderTrackingNumber": "IWVKDJGDGHDFBCFJ123415",
      "orderNo": "0000000022",
      "orderDate": "20-02-2024",
      "orderQuantity": 3,
      "orderStatus": "Cancelled",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        },
        {
          "orderItemTrackingNumber": "Q9SX81D54C52S241C1D",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1AJLaV8LfMSvroY9rtQfvkWCrWDCoS-8N",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 3,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "15\$"
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    },
    {
      "orderTrackingNumber": "IWVKDJGDGHDFBCFJ123415",
      "orderNo": "0000000023",
      "orderDate": "20-02-2024",
      "orderQuantity": 3,
      "orderStatus": "Delivered",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        },
        {
          "orderItemTrackingNumber": "Q9SX81D54C52S241C1D",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1AJLaV8LfMSvroY9rtQfvkWCrWDCoS-8N",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 3,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "15\$"
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    },
    {
      "orderTrackingNumber": "IWVKDJGDGHDFBCFJ123415",
      "orderNo": "0000000024",
      "orderDate": "20-02-2024",
      "orderQuantity": 3,
      "orderStatus": "Processing",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        },
        {
          "orderItemTrackingNumber": "Q9SX81D54C52S241C1D",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1AJLaV8LfMSvroY9rtQfvkWCrWDCoS-8N",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 3,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "15\$"
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    },
    {
      "orderTrackingNumber": "IWVKDJGDGHDFBCFJ123415",
      "orderNo": "0000000025",
      "orderDate": "20-02-2024",
      "orderQuantity": 3,
      "orderStatus": "Delivered",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        },
        {
          "orderItemTrackingNumber": "Q9SX81D54C52S241C1D",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1AJLaV8LfMSvroY9rtQfvkWCrWDCoS-8N",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 3,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "15\$"
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    },
    {
      "orderTrackingNumber": "9D0D9D9D123415",
      "orderNo": "0000000026",
      "orderDate": "20-02-2024",
      "orderQuantity": 5,
      "orderStatus": "Cancelled",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        },
        {
          "orderItemTrackingNumber": "Q9SX81D54C52S241C1D",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1AJLaV8LfMSvroY9rtQfvkWCrWDCoS-8N",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 3,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "15\$"
        },
        {
          "orderItemTrackingNumber": "JH75NV8NA8GN9NVK7",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1xEUJZ9SF3qV7uGTH-1S9_27vtk_HIkKa",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "L",
          "orderItemUnits": 1,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "5\$",
        },
        {
          "orderItemTrackingNumber": "N1N34GN0NUR8N84N89",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1f7eLitIydRPVHEgyOJpIM5Pj6J6Q2nQT",
          "orderItemName": "Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Blue",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$",
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    },
    {
      "orderTrackingNumber": "O2I1HJ2U3123415",
      "orderNo": "0000000027",
      "orderDate": "20-02-2024",
      "orderQuantity": 2,
      "orderStatus": "Delivered",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    },
    {
      "orderTrackingNumber": "A2SWS2S3E123415",
      "orderNo": "0000000028",
      "orderDate": "20-02-2024",
      "orderQuantity": 3,
      "orderStatus": "Cancelled",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        },
        {
          "orderItemTrackingNumber": "Q9SX81D54C52S241C1D",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1AJLaV8LfMSvroY9rtQfvkWCrWDCoS-8N",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 3,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "15\$"
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    },
    {
      "orderTrackingNumber": "IWVKDJGDGHDFBCFJ123415",
      "orderNo": "0000000029",
      "orderDate": "20-02-2024",
      "orderQuantity": 3,
      "orderStatus": "Delivered",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        },
        {
          "orderItemTrackingNumber": "Q9SX81D54C52S241C1D",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1AJLaV8LfMSvroY9rtQfvkWCrWDCoS-8N",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 3,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "15\$"
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    },
    {
      "orderTrackingNumber": "IWVKDJGDGHDFBCFJ123415",
      "orderNo": "0000000030",
      "orderDate": "20-02-2024",
      "orderQuantity": 3,
      "orderStatus": "Processing",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        },
        {
          "orderItemTrackingNumber": "Q9SX81D54C52S241C1D",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1AJLaV8LfMSvroY9rtQfvkWCrWDCoS-8N",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 3,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "15\$"
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    },
    {
      "orderTrackingNumber": "IWVKDJGDGHDFBCFJ123415",
      "orderNo": "0000000031",
      "orderDate": "20-02-2024",
      "orderQuantity": 3,
      "orderStatus": "Cancelled",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        },
        {
          "orderItemTrackingNumber": "Q9SX81D54C52S241C1D",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1AJLaV8LfMSvroY9rtQfvkWCrWDCoS-8N",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 3,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "15\$"
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    },
    {
      "orderTrackingNumber": "IWVKDJGDGHDFBCFJ123415",
      "orderNo": "0000000032",
      "orderDate": "20-02-2024",
      "orderQuantity": 3,
      "orderStatus": "Processing",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        },
        {
          "orderItemTrackingNumber": "Q9SX81D54C52S241C1D",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1AJLaV8LfMSvroY9rtQfvkWCrWDCoS-8N",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 3,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "15\$"
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    },
    {
      "orderTrackingNumber": "IWVKDJGDGHDFBCFJ123415",
      "orderNo": "0000000033",
      "orderDate": "20-02-2024",
      "orderQuantity": 3,
      "orderStatus": "Delivered",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        },
        {
          "orderItemTrackingNumber": "Q9SX81D54C52S241C1D",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1AJLaV8LfMSvroY9rtQfvkWCrWDCoS-8N",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 3,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "15\$"
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    },
    {
      "orderTrackingNumber": "IWVKDJGDGHDFBCFJ123415",
      "orderNo": "0000000034",
      "orderDate": "20-02-2024",
      "orderQuantity": 3,
      "orderStatus": "Cancelled",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        },
        {
          "orderItemTrackingNumber": "Q9SX81D54C52S241C1D",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1AJLaV8LfMSvroY9rtQfvkWCrWDCoS-8N",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 3,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "15\$"
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    },
    {
      "orderTrackingNumber": "IWVKDJGDGHDFBCFJ123415",
      "orderNo": "0000000035",
      "orderDate": "20-02-2024",
      "orderQuantity": 3,
      "orderStatus": "Delivered",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        },
        {
          "orderItemTrackingNumber": "Q9SX81D54C52S241C1D",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1AJLaV8LfMSvroY9rtQfvkWCrWDCoS-8N",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 3,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "15\$"
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    },
    {
      "orderTrackingNumber": "IWVKDJGDGHDFBCFJ123415",
      "orderNo": "0000000036",
      "orderDate": "20-02-2024",
      "orderQuantity": 3,
      "orderStatus": "Processing",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        },
        {
          "orderItemTrackingNumber": "Q9SX81D54C52S241C1D",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1AJLaV8LfMSvroY9rtQfvkWCrWDCoS-8N",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 3,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "15\$"
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    },
    {
      "orderTrackingNumber": "IWVKDJGDGHDFBCFJ123415",
      "orderNo": "0000000037",
      "orderDate": "20-02-2024",
      "orderQuantity": 3,
      "orderStatus": "Delivered",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        },
        {
          "orderItemTrackingNumber": "Q9SX81D54C52S241C1D",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1AJLaV8LfMSvroY9rtQfvkWCrWDCoS-8N",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 3,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "15\$"
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    },
    {
      "orderTrackingNumber": "9D0D9D9D123415",
      "orderNo": "0000000038",
      "orderDate": "20-02-2024",
      "orderQuantity": 5,
      "orderStatus": "Cancelled",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        },
        {
          "orderItemTrackingNumber": "Q9SX81D54C52S241C1D",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1AJLaV8LfMSvroY9rtQfvkWCrWDCoS-8N",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 3,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "15\$"
        },
        {
          "orderItemTrackingNumber": "JH75NV8NA8GN9NVK7",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1xEUJZ9SF3qV7uGTH-1S9_27vtk_HIkKa",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "L",
          "orderItemUnits": 1,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "5\$",
        },
        {
          "orderItemTrackingNumber": "N1N34GN0NUR8N84N89",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1f7eLitIydRPVHEgyOJpIM5Pj6J6Q2nQT",
          "orderItemName": "Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Blue",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$",
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    },
    {
      "orderTrackingNumber": "O2I1HJ2U3123415",
      "orderNo": "0000000039",
      "orderDate": "20-02-2024",
      "orderQuantity": 2,
      "orderStatus": "Delivered",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    },
    {
      "orderTrackingNumber": "A2SWS2S3E123415",
      "orderNo": "0000000040",
      "orderDate": "20-02-2024",
      "orderQuantity": 3,
      "orderStatus": "Cancelled",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        },
        {
          "orderItemTrackingNumber": "Q9SX81D54C52S241C1D",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1AJLaV8LfMSvroY9rtQfvkWCrWDCoS-8N",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 3,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "15\$"
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    },
    {
      "orderTrackingNumber": "IWVKDJGDGHDFBCFJ123415",
      "orderNo": "0000000041",
      "orderDate": "20-02-2024",
      "orderQuantity": 3,
      "orderStatus": "Delivered",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        },
        {
          "orderItemTrackingNumber": "Q9SX81D54C52S241C1D",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1AJLaV8LfMSvroY9rtQfvkWCrWDCoS-8N",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 3,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "15\$"
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    },
    {
      "orderTrackingNumber": "IWVKDJGDGHDFBCFJ123415",
      "orderNo": "0000000042",
      "orderDate": "20-02-2024",
      "orderQuantity": 3,
      "orderStatus": "Processing",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        },
        {
          "orderItemTrackingNumber": "Q9SX81D54C52S241C1D",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1AJLaV8LfMSvroY9rtQfvkWCrWDCoS-8N",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 3,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "15\$"
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    },
    {
      "orderTrackingNumber": "IWVKDJGDGHDFBCFJ123415",
      "orderNo": "0000000043"
          "",
      "orderDate": "20-02-2024",
      "orderQuantity": 3,
      "orderStatus": "Cancelled",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        },
        {
          "orderItemTrackingNumber": "Q9SX81D54C52S241C1D",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1AJLaV8LfMSvroY9rtQfvkWCrWDCoS-8N",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 3,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "15\$"
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    },
    {
      "orderTrackingNumber": "IWVKDJGDGHDFBCFJ123415",
      "orderNo": "000000004",
      "orderDate": "20-02-2024",
      "orderQuantity": 3,
      "orderStatus": "Processing",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        },
        {
          "orderItemTrackingNumber": "Q9SX81D54C52S241C1D",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1AJLaV8LfMSvroY9rtQfvkWCrWDCoS-8N",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 3,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "15\$"
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    },
    {
      "orderTrackingNumber": "IWVKDJGDGHDFBCFJ123415",
      "orderNo": "0000000045",
      "orderDate": "20-02-2024",
      "orderQuantity": 3,
      "orderStatus": "Delivered",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        },
        {
          "orderItemTrackingNumber": "Q9SX81D54C52S241C1D",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1AJLaV8LfMSvroY9rtQfvkWCrWDCoS-8N",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 3,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "15\$"
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    },
    {
      "orderTrackingNumber": "IWVKDJGDGHDFBCFJ123415",
      "orderNo": "0000000046",
      "orderDate": "20-02-2024",
      "orderQuantity": 3,
      "orderStatus": "Cancelled",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        },
        {
          "orderItemTrackingNumber": "Q9SX81D54C52S241C1D",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1AJLaV8LfMSvroY9rtQfvkWCrWDCoS-8N",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 3,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "15\$"
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    },
    {
      "orderTrackingNumber": "IWVKDJGDGHDFBCFJ123415",
      "orderNo": "0000000047",
      "orderDate": "20-02-2024",
      "orderQuantity": 3,
      "orderStatus": "Delivered",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        },
        {
          "orderItemTrackingNumber": "Q9SX81D54C52S241C1D",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1AJLaV8LfMSvroY9rtQfvkWCrWDCoS-8N",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 3,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "15\$"
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    },
    {
      "orderTrackingNumber": "IWVKDJGDGHDFBCFJ123415",
      "orderNo": "0000000048",
      "orderDate": "20-02-2024",
      "orderQuantity": 3,
      "orderStatus": "Processing",
      "orderItems": [
        {
          "orderItemTrackingNumber": "Q1F4S5S6S8D258F",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=13mhQOhbi75Ecx6gpm8_cYKbSfH3ePzlO",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 2,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "10\$"
        },
        {
          "orderItemTrackingNumber": "Q5S5D7D84C8CV4D54C",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1zvV74a2OyYkRB0ZEpiln1b47Ri_sqWWp",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 5,
          "orderItemUnitPrice": "4\$",
          "orderItemTotalPrice": "20\$"
        },
        {
          "orderItemTrackingNumber": "Q9SX81D54C52S241C1D",
          "orderImageUrl":
          "https://drive.google.com/uc?export=view&id=1AJLaV8LfMSvroY9rtQfvkWCrWDCoS-8N",
          "orderItemName": "T-Shirt",
          "orderItemDescription": "Pullover",
          "orderItemColor": "Black and White",
          "orderItemSize": "XL",
          "orderItemUnits": 3,
          "orderItemUnitPrice": "5\$",
          "orderItemTotalPrice": "15\$"
        }
      ],
      "orderShippingAddress": "Radio Colony, Sava, Dhaka",
      "orderPaymentMethod": "**** **** **** 1234",
      "orderDeliveryMethod": "Courier, 2 days, 5\$",
      "orderDiscount": "10%, Personal promo code",
      "orderTotalAmount": "45\$"
    }
  ]
};

/// Order type sample data List
List<String> orderTypeSampleDataList = ["Delivered","Processing","Cancelled"];