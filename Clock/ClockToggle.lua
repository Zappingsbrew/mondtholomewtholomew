function Initialize()
end

function Update()
    local currentFont = SKIN:GetVariable("ClockFont")

    if currentFont == "Anurati" then
        SKIN:Bang('!SetVariable', 'ClockFont', 'Quicksand')
        SKIN:Bang('!WriteKeyValue', 'Variables', 'ClockFont', 'Quicksand', '#@#Variables.inc')
        SKIN:Bang('!WriteKeyValue', 'Rainmeter', 'ContextTitle10', '#__Quicksand#')
        SKIN:Bang('!WriteKeyValue', 'Rainmeter', 'ContextTitle11', '#__Anurati#')
    else
        SKIN:Bang('!SetVariable', 'ClockFont', 'Anurati')
        SKIN:Bang('!WriteKeyValue', 'Variables', 'ClockFont', 'Anurati', '#@#Variables.inc')
        SKIN:Bang('!WriteKeyValue', 'Rainmeter', 'ContextTitle10', '#__Anurati#')
        SKIN:Bang('!WriteKeyValue', 'Rainmeter', 'ContextTitle11', '#__Quicksand#')
    end

    SKIN:Bang('!UpdateMeter', '*')
    SKIN:Bang('!Redraw')
end
