-- datetime.lua
-- Output date/time.

local function translator(input, seg)
    if (input == "rsqj") then
        --- Candidate(type, start, end, text, comment)
        yield(Candidate("date", seg.start, seg._end, os.date("%Y-%m-%d"), ""))
        yield(Candidate("date", seg.start, seg._end, os.date("%Y年%m月%d日"), ""))
    end
    if (input == "ssju") then
        yield(Candidate("date", seg.start, seg._end, os.date("%H:%M:%S"), ""))
    end
    if (input == "rqsj") then
        yield(Candidate("date", seg.start, seg._end, os.date("%Y-%m-%d %H:%M:%S"), ""))
    end
    if (input == "xsqj") then
        local arr = {"一","二","三","四","五","六"}
        arr[0] = "日"

        yield(Candidate("date", seg.start, seg._end, os.date("星期" .. arr[tonumber(os.date("%w"))]), ""))
        yield(Candidate("date", seg.start, seg._end, os.date("周" .. arr[tonumber(os.date("%w"))]), ""))
    end
end

return translator
