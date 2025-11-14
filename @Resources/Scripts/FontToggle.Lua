function SetFont(fontName)
    SKIN:Bang('[!SetVariable ClockFont "'..fontName..'"][!UpdateMeter "MeterClock"][!Redraw]')
end
