class Pin < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image, styles: { medium: "300x300>" }
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
	:url  => ""
    :path => "public/avatars/:id/:style_:basename.:extension"
    :storage => :fog
    :fog_credentials => {
        provider: 'AWS',
        aws_access_key_id: "AKIAJOY7DTGLXRUCFGCQ",
        aws_secret_access_key: "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"
    }
    fog_directory: "gracepinboard"

end
