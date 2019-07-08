init()
{
	addscriptcommand( "fov", 1 );
	addscriptcommand( "fps", 1 );
	addscriptcommand( "promod", 1 );
}

commandHandler( cmd, arg )
{
	self endon( "disconnect" );
	level endon( "game_ended" );

	switch( cmd )
	{
		case "fps":
			if( self.pers[ "fullbright" ] == 0 )
			{
				self iPrintlnBold( "^3Ôףכבנאיע ^2ÂÊË" );
				self setClientDvar( "r_fullbright", 1 );
				self setstat( 3160, 1 );
				self.pers[ "fullbright" ] = 1;
				if( self.pers[ "promodTweaks" ] )
				{
					self iPrintlnBold( "^3Ôטכüל עגטך ^1ÂÛÊË" );
					self SetClientDvars( "r_filmusetweaks", "0",
										 "r_filmTweakenable", "0" );
					self setstat( 3162, 0 );
					self.pers[ "promodTweaks" ] = 0;
				}
			}
			else
			{
				self iPrintlnBold( "^3Ôףכבנאיע ^1ÂÛÊË" );
				self setClientDvar( "r_fullbright", 0 );
				self setstat( 3160, 0 );
				self.pers[ "fullbright" ] = 0;
			}
			break;

		case "fov":
			if( self.pers["fov"] == 1 )
			{
				self iPrintlnBold( "^3Óדמכ מבחמנא: ^11.0" );
				self setClientDvar( "cg_fovscale", 1.0 );
				self setClientDvar( "cg_fov", 80 );
				self setstat( 3161, 0 );
				self.pers[ "fov" ] = 0;
			}
			else if( self.pers["fov"] == 0 )
			{
				self iPrintlnBold( "^3Óדמכ מבחמנא: ^11.25" );
				self setClientDvar( "cg_fovscale", 1.25 );
				self setClientDvar( "cg_fov", 80 );
				self setstat( 3161, 2 );
				self.pers[ "fov" ] = 2;
			}
			else if( self.pers["fov"] == 2 )
			{
				self iPrintlnBold( "^3Óדמכ מבחמנא: ^11.125" );
				self setClientDvar( "cg_fovscale", 1.125 );
				self setClientDvar( "cg_fov", 80 );
				self setstat( 3161, 1 );
				self.pers[ "fov" ] = 1;
			}
			break;
		
		case "promod":
			if( self.pers[ "promodTweaks" ] == 0 )
			{
				self iPrintlnBold( "^3Ôטכüל עגטך ^2ÂÊË" );
				self SetClientDvars( "r_filmTweakInvert", "0",
									 "r_filmTweakBrightness", "0",
									 "r_filmusetweaks", "1",
									 "r_filmTweakenable", "1",
									 "r_filmtweakLighttint", "0.8 0.8 1",
									 "r_filmTweakContrast", "1.3",
									 "r_filmTweakDesaturation", "0",
									 "r_filmTweakDarkTint", "1.8 1.8 2" );

				self setstat( 3162, 1 );
				self.pers[ "promodTweaks" ] = 1;
				
				if( self.pers[ "fullbright" ] )
				{
					self iPrintlnBold( "^3Ôףכבנאיע ^1ÂÛÊË" );
					self setClientDvar( "r_fullbright", 0 );
					self setstat( 3160, 0 );
					self.pers[ "fullbright" ] = 0;
				}
			}
			else
			{
				self iPrintlnBold( "^3Ôטכüל עגטך ^1ÂÛÊË" );
				self SetClientDvars( "r_filmusetweaks", "0",
									 "r_filmTweakenable", "0" );
				self setstat( 3162, 0 );
				self.pers[ "promodTweaks" ] = 0;
			}
			break;
			
		default:
			break;
	}
}