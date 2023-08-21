/// @description Move left

if(!keyboard_check(vk_left))
{
	event_perform(ev_keyboard, vk_left);
}