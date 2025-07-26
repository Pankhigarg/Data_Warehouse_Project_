/* Stored Procedure: Load Bronze Layer(source -> bronze) */

CREATE OR ALTER PROCEDURE bronze.load_bronze AS
BEGIN  
  DECLARE @start_time DATETIME , @end_time DATETIME
BEGIN TRY
			TRUNCATE TABLE bronze.crm_cust_info;
			SET @start_time = GETDATE();
			BULK INSERT bronze.crm_cust_info
			FROM 'C:\Users\DELL\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\cust_info.csv'
			WITH (
			  FIRSTROW = 2,
			 FIELDTERMINATOR = ',',
			 TABLOCK 
			);
			SET @end_time = GETDATE();
			PRINT 'lOAD DURATION' +    CAST(DATEDIFF(SECOND , @start_time , @end_time) AS NVARCHAR)   + 'Seconds';
			
			
			TRUNCATE TABLE bronze.crm_prd_info;
			SET @start_time = GETDATE();
			BULK INSERT bronze.crm_prd_info
			FROM 'C:\Users\DELL\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\prd_info.csv'
			WITH (
			  FIRSTROW = 2,
			  FIELDTERMINATOR = ',',
			   TABLOCK 
  
			);
			SET @end_time = GETDATE();
			PRINT 'lOAD DURATION' + CAST(DATEDIFF(SECOND , @start_time , @end_time) AS NVARCHAR) + 'Seconds';
			
			

			TRUNCATE TABLE bronze.crm_sales_details;
			SET @start_time = GETDATE();
			BULK INSERT bronze.crm_sales_details
			FROM 'C:\Users\DELL\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_crm\sales_details.csv'
			WITH (
			  FIRSTROW = 2,
			  FIELDTERMINATOR = ',',
			   TABLOCK 

			);
			SET @end_time = GETDATE();
			PRINT 'lOAD DURATION' + CAST(DATEDIFF(SECOND , @start_time , @end_time) AS NVARCHAR) + 'Seconds';
			
			
			TRUNCATE TABLE bronze.erp_CUST_AZ12;
			SET @start_time = GETDATE();
			BULK INSERT bronze.erp_CUST_AZ12
			FROM 'C:\Users\DELL\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\CUST_AZ12.csv'
			WITH (
			  FIRSTROW = 2,
			 FIELDTERMINATOR = ',',
			  TABLOCK 
			);

			SET @end_time = GETDATE();
			PRINT 'lOAD DURATION' + CAST(DATEDIFF(SECOND , @start_time , @end_time) AS NVARCHAR) + 'Seconds';
			
			

			TRUNCATE TABLE bronze.erp_LOC_A101;
			SET @start_time = GETDATE();
			BULK INSERT bronze.erp_LOC_A101
			FROM 'C:\Users\DELL\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\LOC_A101.csv'
			WITH (
			  FIRSTROW = 2,
			  FIELDTERMINATOR = ',',
			   TABLOCK 
  
			);
			SET @end_time = GETDATE();
			PRINT 'lOAD DURATION' + CAST(DATEDIFF(SECOND , @start_time , @end_time) AS NVARCHAR) + 'Seconds';
			
			

			TRUNCATE TABLE bronze.erp_PX_CAR_G1V2;
			SET @start_time = GETDATE();
			BULK INSERT bronze.erp_PX_CAR_G1V2
			FROM 'C:\Users\DELL\Downloads\sql-data-warehouse-project\sql-data-warehouse-project\datasets\source_erp\PX_CAT_G1V2.csv'
			WITH (
			  FIRSTROW = 2,
			  FIELDTERMINATOR = ',',
			   TABLOCK 
  
			);
			SET @end_time = GETDATE();
			PRINT 'lOAD DURATION' + CAST(DATEDIFF(SECOND , @start_time , @end_time) AS NVARCHAR) + 'Seconds';
END TRY
BEGIN CATCH
  PRINT '=========================================='
  PRINT 'ERROR OCCURED DURING LOADING BRONZE LAYER'
  PRINT 'ERROR MESSAGE' + ERROR_MESSAGE();
  PRINT 'ERROR MESSAGE' + CAST(ERROR_NUMBER() AS NVARCHAR);
  PRINT 'ERROR MESSAGE' + CAST(ERROR_STATE() AS NVARCHAR);
  PRINT '=========================================='
   
END CATCH
END


