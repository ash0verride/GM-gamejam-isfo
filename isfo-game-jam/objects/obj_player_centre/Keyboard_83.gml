/// @description Move down

if(!keyboard_check(vk_down))
{
	event_perform(ev_keyboard, vk_down);
}