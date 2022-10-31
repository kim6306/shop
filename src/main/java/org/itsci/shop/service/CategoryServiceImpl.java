package org.itsci.shop.service;

import org.itsci.shop.dao.CategoryDao;
import org.itsci.shop.model.Category;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class CategoryServiceImpl implements CategoryService {

    @Autowired
    private CategoryDao categoryDao;

    @Override
    @Transactional
    public void saveCategory(Category category) {
        categoryDao.saveCategory(category);
    }

    @Override
    @Transactional
    public Category getCategory(int id) {
        return categoryDao.getCategory(id);
    }

    @Override
    @Transactional
    public void deleteCategory(int id) {
        categoryDao.deleteCategory(id);
    }

    @Override
    @Transactional
    public Category getCategoryByCode(String code) {
        return categoryDao.getCategoryByCode(code);
    }

    @Override
    @Transactional
    public void updateCategory(Category dbCategory, Category category) {
        Category categoryEntity = categoryDao.getCategory(category.getId());
        categoryEntity.fill(category);
        categoryDao.saveCategory(categoryEntity);
    }

    @Override
    @Transactional
    public List<Category> getCategories() {
        return categoryDao.getCategories();
    }
}
