Select EventName,EventDate,DATENAME(WEEKDAY,EventDate) as 'Day of week',DATEPART(day,EventDate)as 'Day Number' from tblEvent 

select * from tblEvent where DATENAME(WEEKDAY,EventDate)='Friday' and DATEPART(day,EventDate)=13 

select EventName,
		EventDate,
		DATENAME(WEEKDAY,EventDate) as 'Day of week',
		DATEPART(day,EventDate)as 'Day Number',
		DATEADD(day,-1,EventDate) as 'Previous Day',
		DATEADD(day,+1,EventDate) as 'Day after' 
		from tblEvent 
		where 
		DATENAME(WEEKDAY,EventDate)='Thursday' 
		and 
		DATEPART(day,EventDate)=12 
		or 
		DATENAME(WEEKDAY,EventDate)='Saturday'
		and  
		DATEPART(day,EventDate)=14
		or
		DATENAME(WEEKDAY,EventDate)='Friday'
		and  
		DATEPART(day,EventDate)=13