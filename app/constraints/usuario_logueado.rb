class UsuarioLogueado
	def self.matches?(request)
		puts request
	  !request.session[:user_id].blank?
	 end

end