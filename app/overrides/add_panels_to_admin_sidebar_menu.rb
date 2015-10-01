Deface::Override.new(
  virtual_path: 'spree/layouts/admin',
  name: 'panels_admin_sidebar_menu',
  insert_bottom: '#main-sidebar',
  partial: 'spree/admin/shared/panels_sidebar_menu'
)
