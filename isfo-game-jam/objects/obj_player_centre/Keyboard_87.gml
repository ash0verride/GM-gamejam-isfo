/// @description Move up

if(!keyboard_check(vk_up))
{
	event_perform(ev_keyboard, vk_up)
}