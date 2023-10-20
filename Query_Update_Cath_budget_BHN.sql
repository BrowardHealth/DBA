Select region,[year],[month],Item,type,amount,Region_Alp ,DateUpdated from cbase.ActualBudget where year='2023' and item like '%Cath%' and region_alp='BHN' and type=2

Select sum(amount) from cbase.ActualBudget where year='2023' and item like '%Cath%' and region_alp='BHN' and type=2

begin tran
update cbase.ActualBudget
set amount= 45,
  DateUpdated=getdate()
  where year='2023' and item like '%Cath%' and region_alp='BHN' and type=2 and month='07'


  update cbase.ActualBudget
set amount= 51,
  DateUpdated=getdate()
  where year='2023' and item like '%Cath%' and region_alp='BHN' and type=2 and month='08'

  update cbase.ActualBudget
set amount= 42,
  DateUpdated=getdate()
  where year='2023' and item like '%Cath%' and region_alp='BHN' and type=2 and month='09'

  update cbase.ActualBudget
set amount= 48,
  DateUpdated=getdate()
  where year='2023' and item like '%Cath%' and region_alp='BHN' and type=2 and month='10'

  update cbase.ActualBudget
set amount= 51,
  DateUpdated=getdate()
  where year='2023' and item like '%Cath%' and region_alp='BHN' and type=2 and month='11'

  update cbase.ActualBudget
set amount= 47,
  DateUpdated=getdate()
  where year='2023' and item like '%Cath%' and region_alp='BHN' and type=2 and month='12'

  update cbase.ActualBudget
set amount= 33,
  DateUpdated=getdate()
  where year='2023' and item like '%Cath%' and region_alp='BHN' and type=2 and month='01'

  update cbase.ActualBudget
set amount= 45,
  DateUpdated=getdate()
  where year='2023' and item like '%Cath%' and region_alp='BHN' and type=2 and month='02'

  update cbase.ActualBudget
set amount= 62,
  DateUpdated=getdate()
  where year='2023' and item like '%Cath%' and region_alp='BHN' and type=2 and month='03'

  update cbase.ActualBudget
set amount= 36,
  DateUpdated=getdate()
  where year='2023' and item like '%Cath%' and region_alp='BHN' and type=2 and month='04'

  update cbase.ActualBudget
set amount= 49,
  DateUpdated=getdate()
  where year='2023' and item like '%Cath%' and region_alp='BHN' and type=2 and month='05'

  update cbase.ActualBudget
set amount= 40,
  DateUpdated=getdate()
  where year='2023' and item like '%Cath%' and region_alp='BHN' and type=2 and month='06'


  commit
