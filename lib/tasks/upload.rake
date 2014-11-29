task :upload_pictures_to_cloudinary do
  filenames = %w(carousel-1.jpg carousel-2.jpg carousel-3.jpg carousel-4.jpg)
  PATH = 'app/assets/images/'
  filenames.each do |a|
    p PATH + a
    p (File.exists? PATH + a)
    file = PATH + a
    Cloudinary::Uploader.upload file
  end
end
