/* Copyright (C) 2005-2011 Fabio Riccardi */

package com.lightcrafts.app.menu;

import com.lightcrafts.app.ComboFrame;
import com.lightcrafts.app.Application;

import java.awt.event.ActionEvent;

final class SaveAsMenuItem extends DocumentMenuItem {

    SaveAsMenuItem(ComboFrame frame) {
        super(frame, "SaveAs");
    }

    public void actionPerformed(ActionEvent event) {
        performPreAction( event );
        final ComboFrame frame = getComboFrame();
        Application.saveAs(frame);
    }
}
