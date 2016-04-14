if Facter.value(:osfamily) == 'windows'
require 'win32/registry'

users = ''
sids = ''

Win32::Registry::HKEY_LOCAL_MACHINE.open(
  'Software\Microsoft\Windows NT\CurrentVersion\ProfileList'
) do |reg|
  reg.each_key do |key|
    k = reg.open(key)
	profile = k["ProfileImagePath"]
	len = profile.length
	len = len - 9
	user = profile[9,len]
	if profile[0,8] == 'C:\Users'
	  users = user + ',' + users
	  sids = key + ',' + sids
	end
  end
end

Facter.add("users") do
  setcode do
    users
  end
end

Facter.add("sids") do
  setcode do
    sids
  end
end

end

