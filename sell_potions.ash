boolean is_avatar_potion( item it )
{
    return it.effect_modifier( "Effect" ).string_modifier( "Avatar" ) != "";
}

void main()
{
  int[item] inventory = get_inventory() ;
  foreach it in inventory
  {
    if (is_avatar_potion(it))
    {
      autosell(item_amount(it), it);
    }
  }
  
  item item1 = $item[ancient vinyl coin purse];
  item item2 = $item[black pension check];
  item item3 = $item[collection of tiny spooky objects];
  item item4 = $item[CSA discount card];
  item item5 = $item[fat wallet];
  
  item item6 = $item[Gathered Meat-Clip];
  item item7 = $item[old coin purse];
  item item8 = $item[old leather wallet];
  item item9 = $item[SMOOCH bottlecap];
  item item10 = $item[Warm Subject gift certificate];
  
  use(item_amount(item1), item1);
  use(item_amount(item2), item2);
  use(item_amount(item3), item3);
  use(item_amount(item4), item4);
  use(item_amount(item5), item5);
  
  use(item_amount(item6), item6);
  use(item_amount(item7), item7);
  use(item_amount(item8), item8);
  use(item_amount(item9), item9);
  use(item_amount(item10), item10);
  
  item item11 = $item[transmission from planet Xi];
  
  use(item_amount(item11), item11);
  
  item item12 = $item[bag of park garbage];
  
  use(item_amount(item12) - 1, item12);
  
  item item13 = $item[pack of Alice's Army cards];
  
  use(item_amount(item13), item13);

  item item14 = $item[1,970 carat gold];
  
  autosell(item_amount(item14), item14);
  
  use_familiar($familiar[stooper]);
  
  if(inebriety_limit() - my_inebriety() == 1){	
	use_skill(1, $skill[ The Ode to Booze ] );
	drink(1, $item[iced plum wine]);
  }
  
  use_skill(1, $skill[ The Ode to Booze ] );
	overdrink(1, $item[vintage smart drink]);
	
  outfit( "sleep" );

}
