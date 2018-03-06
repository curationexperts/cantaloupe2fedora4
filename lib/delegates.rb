##
# Cantaloupe delegate script configured for Fedora 4 and UCSB
#
#
module Cantaloupe
  ##
  # Tells the server whether the given request is authorized. Will be called
  # upon all image requests to any endpoint.
  #
  # Implementations should assume that the underlying resource is available,
  # and not try to check for it.
  #
  # @param identifier [String] Image identifier
  # @param full_size [Hash<String,Integer>] Hash with `width` and `height`
  #                                         keys corresponding to the pixel
  #                                         dimensions of the source image.
  # @param operations [Array<Hash<String,Object>>] Array of operations in
  #                   order of execution. Only operations that are not no-ops
  #                   will be included. Every hash contains a `class` key
  #                   corresponding to the operation class name, which will be
  #                   one of the e.i.l.c.operation.Operation implementations.
  # @param resulting_size [Hash<String,Integer>] Hash with `width` and `height`
  #                       keys corresponding to the pixel dimensions of the
  #                       resulting image after all operations are applied.
  # @param output_format [Hash<String,String>] Hash with `media_type` and
  #                                            `extension` keys.
  # @param request_uri [String] Full request URI
  # @param request_headers [Hash<String,String>]
  # @param client_ip [String]
  # @param cookies [Hash<String,String>]
  # @return [Boolean,Hash<String,Object] To allow or deny the request, return
  #         true or false. To perform a redirect, return a hash with
  #         `location` and `status_code` keys. `location` must be a URL;
  #         `status_code` must be an integer from 300 to 399.
  #
  def self.authorized?(*)
    true
  end

  # Get images via HTTP
  module HttpResolver
    ##
    # @param identifier [String] Image identifier
    # @param context [Hash] Context for this request
    # @return [String,Hash<String,String>,nil] String URL of the image
    #         corresponding to the given identifier; or a hash with `uri`,
    #         `username`, and `secret` keys; or nil if not found.
    #
    def self.get_url(identifier, context)
      fedora_uri = ENV['FEDORA_URI']
      true
    end
  end
end

# Uncomment to test on the command line (`ruby delegates.rb`)
# puts Cantaloupe::FilesystemResolver::get_pathname('image.jpg')
