cmake_version=3.10.2
cmake_downloaded_archive_name=v${cmake_version}.tar.gz
cmake_download_url=https://github.com/Kitware/CMake/archive/${cmake_downloaded_archive_name}
cmake_extracted_folder=CMake-${cmake_version}

echo "Downloading Cmake ${cmake_version}"
wget --https-only --quiet ${cmake_download_url}

echo "Extracting Cmake"
tar -xzf ${cmake_downloaded_archive_name}

echo "Building Cmake"
(
cd ${cmake_extracted_folder}
./bootstrap
make
)

echo "Installing Cmake"
(
cd ${cmake_extracted_folder}
make install
)

echo "Cleaning"
rm ${cmake_downloaded_archive_name}
rm -r ${cmake_extracted_folder}
