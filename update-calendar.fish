# Defined in /tmp/fish.az3J4K/update-calendar.fish @ line 1
function update-calendar
rm $HOME/.calcurse/apts
wget --directory-prefix $HOME/.calcurse/import "https://outlook.office365.com/owa/calendar/1ddae3f0f8ba4425bd2cfdd2fcdbdd6b@alertinnovation.com/f9f5a52429f7498ab6833e8510e491f015754356351886142903/S-1-8-3538808950-4110748753-3962652147-3311124767/reachcalendar.ics"
calcurse -i $HOME/.calcurse/import/reachcalendar.ics
end
