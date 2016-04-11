
-- Don't let them spray thier fucking spray without spraycan
function SCHEMA:PlayerSpray(client)
	return (client:getChar():getInv():hasItem("spraycan")) or false
end

