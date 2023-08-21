/// @description Move right

if(!keyboard_check(vk_right))
{
	event_perform(ev_keyboard, vk_right);
}