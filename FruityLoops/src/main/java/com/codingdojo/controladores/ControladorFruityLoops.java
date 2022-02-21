package com.codingdojo.controladores;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.codigndojo.modelos.Fruity;

@Controller
public class ControladorFruityLoops {
	@RequestMapping("/")
    public String index(Model model) {
        
        ArrayList<Fruity> fruits = new ArrayList<Fruity>();
        fruits.add(new Fruity("Kiwi", 1.5));
        fruits.add(new Fruity("Mango", 2.0));
        fruits.add(new Fruity("Bayas de Goji", 4.0));
        fruits.add(new Fruity("Guayava", .75));
        
        model.addAttribute("fruitsFromMyController", fruits);
        
        return "index.jsp";
    }
}