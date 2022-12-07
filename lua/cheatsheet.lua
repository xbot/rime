-- cheatsheet.lua
-- List features and usage of the schema.

local function translator(input, seg,env)
	local composition = env.engine.context.composition
	local segment = composition:back()
	if input==rv_var.help then
		local table = {
			{ '时间输出','日期：rsqj｜时间：ssju｜日期时间：rqsj｜星期：xsqj'}
			, { '繁简切换', 'Ctrl + Shift + F' }
			, { '开关 Emoji', 'Ctrl + Shift + G' }
			, { '显隐编码', 'Ctrl + Shift + H' }
			, { '显隐拼音', 'Ctrl + Shift + J' }
			, { '临时拼音', 'i 键引导临时拼音及形码' }
			-- , { '精准造词', '` 键引导精准造词' }
			, { '主页', 'https://github.com/xbot/rime' }
		}
		segment.prompt = '简要说明'
		for k, v in ipairs(table) do
			local cand = Candidate('help', seg.start, seg._end, v[1], ' ' .. v[2])
			-- cand.preedit = input .. '\t简要说明'
			-- cand.quality=100000000
			yield(cand)
		end
	end
end

return translator
