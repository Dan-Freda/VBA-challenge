Attribute VB_Name = "StockMarketData_VBAScript"
Sub Stock_market_data():

     
     'Loop Through All Worksheets
    For Each ws In Worksheets

    'Create Column Headers
    ws.Range("I1").Value = "Ticker"
    ws.Range("J1").Value = "Yearly Change"
    ws.Range("K1").Value = "Percent Change"
    ws.Range("L1").Value = "Total Stock Volume"
    
     'Set and Declare Initial Variables and Baseline Values
    Dim TickerSymbol As String
    Dim LastRow As Long
    Dim TotalStockVolume As Double
    TotalStockVolume = 0
    Dim SummaryTableRow As Long
    SummaryTableRow = 2
    Dim YearlyOpen As Double
    Dim YearlyClose As Double
    Dim YearlyChange As Double
    Dim PreviousAmount As Long
    PreviousAmount = 2
    Dim PercentChange As Double
    
     'Determine the Last Row
    LastRow = ws.Cells(Rows.Count, 1).End(xlUp).Row
    
     'Begin at row 2 to compensate for headers
    For i = 2 To LastRow
    
         'Add to Total Stock Volume
        TotalStockVolume = TotalStockVolume + ws.Cells(i, 7).Value
        
         'Check if we are still within the same Ticker Symbol, if it is not...
        If ws.Cells(i + 1, 1).Value <> ws.Cells(i, 1).Value Then
        
             'Set Ticker Symbol
            TickerSymbol = ws.Cells(i, 1).Value
            
             'Print Ticker Symbol in the Summary Table
            ws.Range("I" & SummaryTableRow).Value = TickerSymbol
            
             'Print Total Stock Volume in the Summary Table
            ws.Range("L" & SummaryTableRow).Value = TotalStockVolume
            
             'Reset Total Stock Volume to enable proper calculation of subsequent entry
            TotalStockVolume = 0
            
            
             'Set Yearly Open, Yearly Close and Yearly Change Values
            YearlyOpen = ws.Range("C" & PreviousAmount)
            YearlyClose = ws.Range("F" & i)
            YearlyChange = YearlyClose - YearlyOpen
            ws.Range("J" & SummaryTableRow).Value = YearlyChange
            
             'Determine Percent Change
            If YearlyOpen = 0 Then
                PercentChange = 0
            Else
                YearlyOpen = ws.Range("C" & PreviousAmount)
                PercentChange = YearlyChange / YearlyOpen
            End If
            
             'Change Percent Change column to Percentage Format
            ws.Range("K" & SummaryTableRow).NumberFormat = "0.00%"
            ws.Range("K" & SummaryTableRow).Value = PercentChange
            
             'Apply Conditional Formatting that Highlights Positive Change (Green (4)) and Negative Change (Red (3))
            If ws.Range("J" & SummaryTableRow).Value >= 0 Then
                ws.Range("J" & SummaryTableRow).Interior.ColorIndex = 4
            Else
                ws.Range("J" & SummaryTableRow).Interior.ColorIndex = 3
            End If
            
             'Add One to the Summary Table Row
            SummaryTableRow = SummaryTableRow + 1
            PreviousAmount = i + 1
            End If
            
        Next i
        
    Next ws
    

End Sub

:   {   " E v e n t F l a g "   :   2 5 6   } ,   " I n t e n t S e r v i c e P r o x y O n C o n n e c t i o n C l o s e d "   :   {   " E v e n t F l a g "   :   2 5 6   } ,   " O n C o n n e c t i o n C l o s e d "   :   {   " E v e n t F l a g "   :   2 5 6   }   }   }   }   }   )) {
            this._dataScro  �� *�(���ollableTop + (rowPositionTop + rowHeight + padding - scrollableHeight));
        }
   