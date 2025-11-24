#!/usr/bin/bash

pkgbuildFile=$(find -type f -name PKGBUILD)

#Adiciona CMAKE_POLICY_VERSION_MINIMUM=3.5 após o build antes do cmake -B
sed -i '/build ()/{p;s/.*/export CMAKE_POLICY_VERSION_MINIMUM=3.5/;}' $pkgbuildFile

# # Add ao depends ao pkgbuild
# sed -i "/\bdepends=/s/(/\('xpto\' 'xpto3\' 'xpto2\' /" $pkgbuildFile
# sed -i "/makedepends=/s/(/\('xpto\' 'xpto2\' 'xpto3\' /" $pkgbuildFile
# sed -i '/\bdepends=/!b; :a; n; a\    '\'xpto\' $pkgbuildFile

# # Remove depends do pkgbuild
# sed -i "/\bdepends=/s/'xpto' //" $pkgbuildFile
# sed -i "/makedepends=/s/'xpto' //" $pkgbuildFile

# # troca xpto por otpx
# sed -i '/\bdepends=/s/xpto/otpx/' $pkgbuildFile
# sed -i '/makedepends=/s/xpto/otpx/' $pkgbuildFile

# # Apagar bloco pkgver
# sed -i '/pkgver()/,/^$/d' $pkgbuildFile

# Cancelar workflow
# cancel () {
#   echo "Sem atualiza de versão"
#   echo "SAINDO...."
#   curl -s -H "Authorization: token ${{ github.token }}" \
#   -X POST "https://api.github.com/repos/${{ github.repository }}/actions/runs/${{ github.run_id }}/cancel"
#   sleep infinity
# }
# cancel
