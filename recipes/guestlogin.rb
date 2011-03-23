node.gdm_guest_user_try_icon_command = 'zenity --notification --text=Guestuser --window-icon=/usr/share/icons/Humanity/emblems/24/emblem-OK.png'

template "/usr/share/gdm/autostart/LoginWindow/guestuser.desktop" do
  owner "root"
  group "root"
  mode 00555
end

file "/etc/gdm/PostLogin/Default" do
  owner "root"
  group "root"
  mode 00755
  content "#!/bin/sh\npkill -f '#{node.gdm_guest_user_try_icon_command}'\n"
end
