%dw 2.0
var totalSales = sum(payload.*amount)
var totalOrders = sizeOf(payload)
output application/json  
---
{
  "date": now() as String {format: "yyyy-MM-dd"},
  "totalOrders": totalOrders,
  "totalSales": totalSales,
  "averageSale": 
    if (totalOrders > 0)
      totalSales / totalOrders
    else
      0
}