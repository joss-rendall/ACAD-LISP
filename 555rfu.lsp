;;;=================================================================
;;; Liaison 555-f avec RFU				v0.0beta
;;;=================================================================
(defun c:555rfu( / v boite_dial li_pl)

;;; sauvegarde état ATTDIA
(setq attdia_sauve (getvar "ATTDIA"))
(defun num_err(msg)
	(setvar "ATTDIA" attdia_sauve)
	(setq jsel nil)
	(setq *error* older)
	(princ)
)
;;; chargement boite de dialogue
(defun pl_dlg()
	(setq boite_dial (load_dialog "555rfu.dcl"))
	(if (null (new_dialog "blocrfu" boite_dial))
	(progn
		(alert "Chargement boite de dialogue impossible")
		(exit)
		)
		)
	(recup_plan)
	(start_list "listepla")
	(mapcar 'add_list li_pl)
	(end_list)
	(action_tile "accept" "(okdlg)")			; bouton OK
	(action_tile "cancel" "(done_dialog)")			; bouton Annuler

	(start_dialog)
	(done_dialog)
)
;;; creation de la liste des plans existants
(defun recup_plan(/ nom pl1)
	(setq pl1 (tblnext "layer" t)
        nom (ff (cdr (assoc 2 pl1)))
        li_pl (cons (strcat nom) li_pl)
	)
	(setq li_pl (acad_strlsort li_pl))
)
  
  
  
  
  
	(unload_dialog dl)

	
	

	
(princ "\n...555rfu.lsp Chargé...\n Pour lancer, taper : 555rfu")
)
