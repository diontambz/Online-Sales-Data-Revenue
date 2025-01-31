
/* REVENUE PER KATEGORI & TOTAL UNITS SOLD PER CATEGORY */
SELECT
    [Product Category], 
    SUM([Units Sold] * [Unit Price]) AS [Total Revenue],
	SUM([Units Sold]) AS [Units Sold]
FROM 
    [Online Sales Data]..onlinesalesdata
GROUP BY
    [Product Category];

/* TOTAL REVENUE PER REGION */
SELECT
	Region,
	SUM([Total Revenue]) AS [Total Revenue]
FROM
	[Online Sales Data]..onlinesalesdata
GROUP BY
	[Region]
	

/* JUMLAH PENGGUNAAN PAYMENT METHOD PER KATEGORY */

SELECT
    [Product Category], 
	[Payment Method],
	COUNT(*) AS [Jumlah Penggunaan]
FROM 
    [Online Sales Data]..onlinesalesdata
GROUP BY
    [Product Category],
	[Payment Method]

/* Revenue Per Month */

SELECT
	DATEPART(MONTH, Date) AS Month,
    SUM([Units Sold] * [Unit Price]) AS [Total Revenue],
	SUM([Units Sold]) AS [Units Sold]
FROM 
    [Online Sales Data]..onlinesalesdata
GROUP BY
	DATEPART(MONTH, Date)


