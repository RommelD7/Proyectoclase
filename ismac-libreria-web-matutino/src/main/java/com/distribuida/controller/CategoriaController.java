package com.distribuida.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.distribuida.dao.CategoriaDAO;
import com.distribuida.entities.Categoria;

@Controller
@RequestMapping("/categorias")
public class CategoriaController {
	@Autowired
	private CategoriaDAO categoriaDAO;

	@GetMapping("/findAll")
	public String findAll(Model model) {
		// try {
		List<Categoria> categorias = categoriaDAO.findAll();
		model.addAttribute("categorias", categorias);

		return "listar-categorias";
//		} catch (Exception e) {
//			// TODO: handle exception
//			e.printStackTrace();
//	   }
	}

	@GetMapping("/finOne")
	public String findOne(@RequestParam("idCategoria") @Nullable Integer idCategoria,
			@RequestParam("opcion") @Nullable Integer opcion, Model model) {
		// try {
		if (idCategoria != null) {
			Categoria categoria = categoriaDAO.findOne(idCategoria);
			model.addAttribute("categoria", categoria);
		}
		if (opcion == 1)
			return "add-categorias";
		else
			return "del-categorias";
		// } catch (Exception e) {
		// // TODO: handle exception
		// }

	}

	@PostMapping("/add")
	public String add(@RequestParam("idCategoria") @Nullable Integer idCategoria,
			@RequestParam("categoria") @Nullable String categoria,
			@RequestParam("descripcion") @Nullable String descripcion, Model model) {
		// try {
		if (idCategoria == null) {
			Categoria Categoria = new Categoria(0, categoria, descripcion);
			categoriaDAO.add(Categoria);
		} else {
			Categoria categoria2 = new Categoria(idCategoria, categoria, descripcion);
			categoriaDAO.up(categoria2);
			// } catch (Exception e) {
			// // TODO: handle exception
			// }

		}
		return "redirect:/categorias/finAll";
	}

	@GetMapping("/del")
	public String del(@RequestParam("idCategoria") @Nullable Integer idCategoria) {
		// try {
		categoriaDAO.del(idCategoria);
		return "redirect:/categorias/finAll";
		// } catch (Exception e) {
		// // TODO: handle exception
		// }

	}
}