class Dashboard

def self.boxes_for(user)
    boxes = []

    boxes << {
      title: "Add Users",
      link: [:admin, :pbx_users],
      icon: "big-icon-user-add",
      content: "Add new users for the PBX."
    }

    boxes << {
      title: "Add Devices",
      link: [:admin, :devices],
      icon: "big-icon-phone",
      content: "Add new devices for the PBX."
    } 

    boxes
  end

  def self.model_name
    ActiveModel::Name.new(self)
  end

end