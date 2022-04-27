module ContactsHelper
  def button_text
    case action_name
    when 'edit'
      'Update'
    when 'new'
      'Create'
    end
  end
end
