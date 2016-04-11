-- This hook replaces the bar's look.
BAR_HEIGHT = 15
local gradient = nut.util.getMaterial("vgui/gradient-d")
function nut.bar.draw(x, y, w, h, value, color, barInfo)
	nut.util.drawBlurAt(x, y, w, h)

	surface.SetDrawColor(83, 204, 245, 15)
	surface.DrawRect(x, y, w, h)
	surface.DrawOutlinedRect(x, y, w, h)

	local bw = w
	x, y, w, h = x + 2, y + 2, (w - 4) * math.min(value, 1), h - 4

	surface.SetDrawColor(color.r, color.g, color.b, 250)
	surface.DrawRect(x, y, w, h)

	surface.SetDrawColor(0, 0, 0, 150)
	surface.SetMaterial(gradient)
	surface.DrawTexturedRect(x, y, w, h)
	
	nut.util.drawText(L(barInfo.identifier or "noname"), x + bw/2, y + h/2, ColorAlpha(color_white, color.a), 1, 1, nil, color.a)
end	
