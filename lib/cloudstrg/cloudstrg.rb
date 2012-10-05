module CloudStrg
  
  ##
  # This method returns an instance of an specified driver
  #
  # Params: the "params" variable must contain the following fields
  #   type: the name of the selected driver.
  #   
  # Returns: 
  #   An instance of the specified driver.
  #
  def self.new_driver params
    type = params[:type]
    require "#{type}strg/#{type}strg"
    return Kernel.const_get("#{type.capitalize}Strg").new(params)
  end

  
  ##
  # This method returns a list of the available storage drivers.
  #
  def self.driver_list
    l = Cloudstrglist.select('plugin_name')
    l.sort!
    return l
  end

  ###
  # This class must be inherited by every single driver definition in order to preserve 
  # the coherence between them.
  #
  class CloudStorage
  
    ###
    # This method performs the previous configuration that the current driver needs to work.
    #
    # Params: the "params" variable must contain the following fields
    #   redirect: the name of the selected driver,
    #   username: the name of the selected driver,
    #   session: the name of the selected driver.
    #   
    # Returns: 
    #   This method returns two parameters:
    #     session: the session variable with the new parameters added,
    #     uri: the uri where the user will allow the application to use the desired service, 
    #       or false if the configuration was completed successfully.
    #
    def config params
      raise NotImplementedError
    end
  
    ###
    # This method performs the creation of a file.
    #
    # Params: the "params" variable must contain the following fields
    #   filename: the name of the file to create,
    #   file_content: the content of the file.
    #   
    # Returns: 
    #   This method returns true if the operation success, otherwise it returns false.
    #
    def create_file params
      raise NotImplementedError
    end

    #def create_folder params
    #  raise NotImplementedError
    #end

    ###
    # This method performs the request to obtain a desired file content
    #
    # Params: the "params" variable must contain the following fields
    #   fileid: the id of the selected file.
    #   
    # Returns: 
    #   This method returns three parameters:
    #     filename: the name of the file,
    #     fileid: the id of the file, 
    #     file_content: the content of the file.
    #
    def get_file params
      raise NotImplementedError
    end
  
    ###
    # This method performs the update of a file.
    #
    # Params: the "params" variable must contain the following fields
    #   filename: the name of the file to edit,
    #   fileid: the id of the file, 
    #   file_content: the content of the file.
    #   
    # Returns: 
    #   This method returns true if the operation success, otherwise it returns false.
    #
    def update_file params
      raise NotImplementedError
    end

    ###
    # This method performs the remove of a file.
    #
    # Params: the "params" variable must contain the following fields
    #   fileid: the id of the file.
    #
    def remove_file params
      raise NotImplementedError
    end

    ###
    # This method returns a list of the available files created by the application.
    #   
    # Returns: 
    #   This method returns a list of tuples, containing: [[filename, fileid], ...] 
    #
    def list_files
      raise NotImplementedError
    end

  end
end
