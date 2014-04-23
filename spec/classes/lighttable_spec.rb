require 'spec_helper'

classes = {
  'lighttable' => 'https://d35ac8ww5dfjyg.cloudfront.net/playground/bins/0.6.5/LightTableMac.zip'
}

classes.each do |version, source|

  describe version do
    it do
      should contain_package('Light Table').with({
        :source   => source,
        :provider => 'compressed_app'
      })
    end
  end
end
