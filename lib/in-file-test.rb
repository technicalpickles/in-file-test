module InFileTest
  extend self

  def generate(filename)
    if File.exists?(filename)
      $stderr.puts "#{filename} already exists, skipping."
      return 1
    end

    $stderr.puts "Generating #{filename}"
    File.open(filename, 'w') do |f|
      template = File.read(template_path)
      f.puts template
    end

    0
  end

  def template_path
    File.join File.dirname(__FILE__), 'in-file-test', 'template.rb'
  end
end
