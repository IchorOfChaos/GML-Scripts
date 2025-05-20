#region GetControls_ArrowKeys()
  function GetControls_ArrowKeys()
  {
    goLeft = keyboard_check(vk_left)
    goRight = keyboard_check(vk_right)
    goUp = keyboard_check(vk_up)
    goDown = keyboard_check(vk_down)
    useSpacebar = keyboard_check(vk_space)
  }
#endregion


#region GetControls_Standard()
  function GetControls_Standard()
  {
  	goLeft = keyboard_check(ord("A"))
  	goRight = keyboard_check(ord("D"))
  	goUp = keyboard_check(ord("W"))
  	goDown = keyboard_check(ord("S"))
  
  	useAbility1 = keyboard_check_pressed(ord("E"))
  	useAbility2 = keyboard_check_pressed(ord("Q"))
  
  	primaryFire = mouse_check_button(mb_left)
  	secondaryFire = mouse_check_button(mb_right)
  }
#endregion
