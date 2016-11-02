;;;=================================================================
;;; Liaison 555-f avec RFU				v0.0beta
;;;=================================================================
(defun c:555rfu( / boite_dial li_pl boucle ssname jsel e e2 nom n)

;;; sauvegarde état ATTDIA
(setq attdia_sauve (getvar "ATTDIA"))
(defun num_err(msg)
	(setvar "ATTDIA" attdia_sauve)
	(setq jsel nil)
	(setq *error* older)
	(princ)
)
;;; chargement boite de dialogue
(defun pl_dlg( / li_pl)
	(setq boite_dial (load_dialog "555rfu.dcl"))
	(setq boucle 2)
	(while (>= boucle 2)
	(if (null (new_dialog "blocrfu" boite_dial))
		(progn
		(alert "Chargement boite de dialogue impossible")
		(exit)))
	(recup_plan)
 	(start_list "listepla")
 	(mapcar 'add_list li_pl)
 	(end_list)
	(action_tile "objt" "(done_dialog 3)"); bouton selection bloc pour modif
	(action_tile "accept" "(done_dialog 1)"); bouton OK
	(action_tile "cancel" "(done_dialog 0)"); bouton Annuler

	(setq boucle (start_dialog))
	(cond
		((= boucle 3)
		(setq jsel (ssget))
			;(setq jsel (ssget '(0 . "insert")) n 0)
			;(while (setq e (ssname jsel n))
			;(setq e2 (vlax-ename->vla-object e))
			;	(if (vlax-property-available-p e2 'effectivename)
			;	(setq nom (vla-get-effectivename e2))
			;	(setq nom (vla-get-name e2))
			;	)
			;	(if (= nom "555-f")
			;	;(faire qqchose.... TEST )
			;	(alert (vl-prin1-to-string attdia_sauv))
			;	)
			;	(setq n (1+ n))
			;)
		)
	)
	)

;	(done_dialog)
)
;;; creation de la liste des plans existants
(defun recup_plan(/ nom pl1)
	(setq lay nil)
		(while (setq lay (tblnext "layer" (not lay )))
		(setq nom (cdr(assoc 2 lay))
			li_pl (cons nom li_pl)
		)
	)
	(setq li_pl (acad_strlsort li_pl))
)	

;;; affichage de la boite de dialogue 
(pl_dlg)  
	
(princ "\n...555rfu.lsp en memoire...\n Pour lancer, taper : 555rfu")
)
