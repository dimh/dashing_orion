require 'nokogiri'

SCHEDULER.every '3s' do
	doc = Nokogiri::XML(open("http://workshop.tidnode.cl/v1/contextEntities/Prueba4"))
	value = doc.css('contextValue')[0].children.to_s.to_f
	send_event('synergy',   { value: value })
end