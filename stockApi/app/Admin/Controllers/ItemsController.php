<?php

namespace App\Admin\Controllers;

use App\Models\Item;
use Encore\Admin\Controllers\AdminController;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;

class ItemsController extends AdminController
{
    /**
     * Title for current resource.
     *
     * @var string
     */
    protected $title = 'Item';

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        $grid = new Grid(new Item());
        $grid->column('id', __('Id'));
        $grid->column('name', __('Name'));
        $grid->column('category', __('Category'));
        $grid->column('description', __('Description'));
        $grid->column('price', __('Price'));
        $grid->column('img_url', __('Image'));
        $grid->column('created_at', __('Created at'));
        $grid->column('updated_at', __('Updated at'));


        return $grid;
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     * @return Show
     */
    protected function detail($id)
    {
        $show = new Show(Item::findOrFail($id));

        $show->column('id', __('Id'));
        $show->column('name', __('Name'));
        $show->column('category', __('Category'));
        $show->column('description', __('Description'));
        $show->column('price', __('Price'));
        $show->column('img_url', __('Image'));
        $show->column('created_at', __('Created at'));
        $show->column('updated_at', __('Updated at'));

        return $show;
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        $form = new Form(new Item());

       
        $form->text('name', __('Name'));
        $form->text('category', __('Category'));
        $form->text('description', __('Description'));
        $form->decimal('price', __('Price'));
        $form->file('img_url', __('Image'));

        return $form;
    }
}
