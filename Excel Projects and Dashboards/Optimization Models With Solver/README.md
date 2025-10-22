# Optimization Models Summary

This README outlines three distinct solver-based optimization models addressing wine production planning and intermodal shipping logistics. Each model applies linear programming techniques to maximize profit or minimize cost under operational constraints.

---

## 1. Wine Production Optimization – Scenario A

### Objective
Maximize profit from wine production using limited resources.

### Decision Variables
- Quantity of Blush, White, and Red wine to produce (measured in casks)

### Parameters

| Wine Type | Grapes Needed (lbs) | Production Time (hrs) | Profit per Cask ($) |
|-----------|---------------------|------------------------|----------------------|
| Blush     | 360                 | 14                     | 11,400               |
| White     | 375                 | 10                     | 9,300                |
| Red       | 410                 | 18                     | 11,000               |

### Constraints
- Total Grapes ≤ 30,000 lbs
- Total Production Time ≤ 1,500 hrs
- Total Casks ≤ 100

### Solution

| Wine Type | Casks Produced | Total Profit ($) |
|-----------|----------------|------------------|
| Blush     | 83.33          | 950,000          |
| White     | 0              | 0                |
| Red       | 0              | 0                |

---

## 2. Wine Production Optimization – Scenario B

### Objective
Maximize profit with diversified wine production under same constraints.

### Solution

| Wine Type | Casks Produced | Total Profit ($) |
|-----------|----------------|------------------|
| Blush     | 37.56          | 428,133.41       |
| White     | 18.41          | 171,253.36       |
| Red       | 23.35          | 256,880.05       |
| **Total** | 79.32          | **856,266.82**   |

### Constraints Used
- Total Grapes: 30,000 lbs
- Total Time: 1,130.27 hrs
- Total Casks: 79.32

---

## 3. Intermodal Shipping Optimization

### Objective
Minimize total shipping cost from sea ports to inland ports and distribution centers.

### Structure
- **Stage 1**: Ship containers from Sea Ports to Inland Ports
- **Stage 2**: Ship containers from Inland Ports to Distribution Centers

### Sea Ports → Inland Ports Costs ($/container)

| Sea Port     | Dallas | Kansas City | Front Royal |
|--------------|--------|-------------|-------------|
| Norfolk      | 855    | 565         | 340         |
| Jacksonville | 750    | 675         | 450         |
| New Orleans  | 400    | 500         | 700         |
| Galveston    | 270    | 510         | 1,050       |

### Inland Ports → Distribution Centers Costs ($/container)

| Inland Port | Tucson | Denver | Pittsburgh | Nashville | Cleveland |
|-------------|--------|--------|------------|-----------|-----------|
| Dallas      | 450    | 830    | 565        | 420       | 960       |
| Kansas City | 880    | 520    | 450        | 380       | 660       |
| Front Royal | 1,400  | 450    | 1,500      | 500       | 500       |

### Container Allocation

- Total containers shipped: 425
- Intermodal capacity met for all inland ports
- Demand satisfied for all distribution centers

### Total Cost
- **Sea Port to Inland Port**: $407,008.45
- **Inland Port to Distribution Centers**: $1,162,158.47
- **Overall Cost**: **$1,570,166.92**

---

## Notes

- Wine models demonstrate trade-offs between specialization and diversification.
- Shipping model balances cost efficiency with capacity and demand constraints.
- All models solved using linear programming with binding constraints.