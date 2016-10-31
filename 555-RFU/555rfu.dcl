blocrfu : dialog
{
	label="Nature du bloc 555 pour le RFU";
	spacer;
	
	:boxed_radio_column {label = "Choix de la fonction";key="choixfonction1";
			:radio_button {label="MODIFICATION d'un bloc existant";key="modif555";}
			:radio_button {label="INSERTION d'un nouveau bloc";key="insert555";value="1";}
			:popup_list {label="Calque d'insertion : ";key="listepla";width="40";}
			
	}
	
	spacer;	
	
	:boxed_column {label = "Remplir les Attributs";
	
	spacer;	
	
		:row {
			:column {
				:toggle {key="rfuok";label="Nature pour RFU";}
				:popup_list {
				key="naturerfu";width=60;value="0";
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
				key="natureplan";width=60;
				}
			}
		}
	}
spacer;spacer;

ok_cancel;

	:text {alignment=right;value="Copyright 2016 - Josselin FERREIRA";}
}
