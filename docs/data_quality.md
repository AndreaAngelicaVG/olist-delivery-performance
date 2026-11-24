# Data Quality Assessment

## Validation Results

| Validation | Finding | Decision / Impact |
|---|---|---|
| **Order ID Validation** | All 99,441 orders have unique, non-null identifiers. | Confirms that each row represents a unique order in the orders dataset, preventing duplicate counting. |
| **Missing Delivery Dates** | 8 orders with status `delivered` have no actual delivery date recorded. | These 8 orders are excluded from the On-Time Delivery (OTD) calculation because their delivery dates are unknown. |
| **Chronological Consistency** | No orders with a recorded actual delivery date were found to have been delivered before their purchase date. | No orders needed to be excluded based on this validation. |
| **Status Consistency** | 6 orders with status `canceled` have a recorded actual delivery date. | These orders are excluded from OTD because the KPI only includes orders with status `delivered` and a recorded actual delivery date. They will be analyzed separately to investigate the timing of their cancellations (Limitation: Further investigation into the timing of these cancellations would require additional data.). |
