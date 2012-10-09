package com.netbiscuits.mvcdemo.struts.action;

import com.netbiscuits.mvcdemo.db.Database;
import com.netbiscuits.mvcdemo.model.tmdbImage;
import com.netbiscuits.mvcdemo.model.tmdbMovie;
import com.netbiscuits.mvcdemo.model.tmdbPoster;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class DetailAction extends Action {

    private static void log(String toLog) {
        Logger.getLogger(DetailAction.class.getName()).log(Level.SEVERE, toLog);
    }

    public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {

        tmdbMovie myMovie = Database.getMovieById(request.getParameter("id"));
        List<tmdbImage> postersOrg = new LinkedList<tmdbImage>();
        for (int i = 0; i < myMovie.getPosters().size(); i++) {
            try {
                if (null == postersOrg || postersOrg.size() <= 10) {
                    if (myMovie.getPosters().get(i).getImage().getSize().equals("original")) {
                        postersOrg.add(myMovie.getPosters().get(i).getImage());
                    }
                }
            } catch (NullPointerException ex) {
                log(ex.getMessage());
            }
        }

        request.setAttribute("posters", postersOrg);
        request.setAttribute("movie", myMovie);
        return mapping.findForward((String) request.getAttribute("presentationType"));

    }
}
