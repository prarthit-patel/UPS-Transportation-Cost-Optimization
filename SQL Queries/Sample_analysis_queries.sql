-- Get average total cost by zone
SELECT Zone, AVG(Total_Cost) AS Avg_Zone_Cost
FROM transport_data
GROUP BY Zone;

-- Top 5 most expensive routes
SELECT * FROM transport_data
ORDER BY Total_Cost DESC
LIMIT 5;

-- Average base cost and fuel surcharge by carrier
SELECT Carrier, AVG(Base_Cost) AS Avg_Base, AVG(Fuel_Surcharge) AS Avg_Fuel
FROM transport_data
GROUP BY Carrier;
