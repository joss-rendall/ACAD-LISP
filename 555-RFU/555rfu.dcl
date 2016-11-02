blocrfu : dialog
{
	label="Nature du bloc 555 pour le RFU";
	spacer;
	
	:boxed_column {label = "Choix de la fonction";key="choixfonction1";
		:row{
			:column{
			:radio_button {label="MODIFICATION d'un bloc existant";key="modif555";value="1";}
			:radio_button {label="INSERTION d'un nouveau bloc  -  Claque d'insertion : ";key="insert555";}
			}
			:column{alignment=centered;
			:button {label="Choix des objets <";key="objt";fixed_width=true;alignment=right;}
			:popup_list {key="listepla";width=40;alignment=right;}
			}
		}
	}
	
	spacer;	
	
	:boxed_column {label = "Remplir les Attributs";
	
	spacer;	
	
		:row {
			:row {
				:toggle {key="rfuok";label="Nature pour RFU";value="1";}
				:popup_list {
				key="naturerfu";width=40;value="0";
				list="Type1\nType2\nType3\nType4";
				}
			}
		}
	spacer;	spacer;	spacer;	
	
		:row {
			:column {
				:toggle {key="planok";label="Nature indiquee sur le Plan";}
				:row {
				:radio_button {label="Idem RFU";key="planidemrfu";}
				:radio_button {label="Personnalisation";key="planperso";value="1";}
				:radio_button {label="Vide";key="planvide";}
				}		
				:edit_box {
				key="natureplan";width=40;
				}
			}
		}
	}
spacer;spacer;

ok_cancel;

	:text {alignment=right;value="Copyright 2016 - Josselin FERREIRA";}
}
